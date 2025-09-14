import { handleError } from '@/scripts/helpers/error-handling'
import { useNotificationStore } from '@/scripts/stores/notification'
import axios from 'axios'
import { defineStore } from 'pinia'

export const useAuthStore = (useWindow = false) => {
  const defineStoreFunc = useWindow ? window.pinia.defineStore : defineStore
  const { global } = window.i18n

  return defineStoreFunc({
    id: 'auth',
    state: () => ({
      status: '',

      loginData: {
        email: '',
        password: '',
        remember: '',
      },
    }),

    actions: {
      login(data) {
        return new Promise((resolve, reject) => {
          axios.get('/sanctum/csrf-cookie').then((response) => {
            if (response) {
              axios
                .post('/login', data)
                //.post('/post-login', data)
                .then((response) => {
                  //console.log('Login response:', response)
                  /* Ls.set('auth.token', response.headers.auth_token)
                  Ls.set('auth.user', response.headers.user)
                  Ls.set('selectedCompany', response.headers.company) */
                  resolve(response)

                  setTimeout(() => {
                    this.loginData.email = ''
                    this.loginData.password = ''
                  }, 1000)
                })
                .catch((err) => {
                  console.error('Login error:', err)
                  handleError(err)
                  reject(err)
                })
            }
          })
        })
      },

      logout() {
        return new Promise((resolve, reject) => {
          axios
            .post('/auth/logout')
            .then((response) => {
              const notificationStore = useNotificationStore()
              notificationStore.showNotification({
                type: 'success',
                message: 'Logged out successfully.',
              })

              window.router.push('/login')
                // resetStore.clearPinia()
              resolve(response)
            })
            .catch((err) => {
              handleError(err)
              window.router.push('/')
              reject(err)
            })
        })
      },
    },
  })()
}