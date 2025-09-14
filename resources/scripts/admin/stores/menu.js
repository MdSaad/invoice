import MenuStub from '@/scripts/admin/stub/Menu'
import { handleError } from '@/scripts/helpers/error-handling'
import { useNotificationStore } from '@/scripts/stores/notification'
import axios from 'axios'
import { defineStore } from 'pinia'
import { useRoute } from 'vue-router'

export const useMenuStore = (useWindow = false) => {
  const defineStoreFunc = useWindow ? window.pinia.defineStore : defineStore
  const { global } = window.i18n

  return defineStoreFunc({
    id: 'Menu',
    state: () => ({
      Menu: [],
      totalMenu: 0,
      selectAllField: false,
      selectedMenu: [],
      selectedViewMenu: {},
      isFetchingInitialSettings: false,
      isFetchingViewData: false,
      currentMenu: {
        ...MenuStub(),
      },
      editMenu: null
    }),

    getters: {
      isEdit: (state) => (state.currentMenu.id ? true : false),
    },

    actions: {
      resetCurrentMenu() {
        this.currentMenu = {
          ...MenuStub(),
        }
      },
      fetchMenuInitialSettings(isEdit) {
        const route = useRoute()
        this.isFetchingInitialSettings = true
        let editActions = []
        if (isEdit) {
          editActions = [this.fetchMenuById(route.params.id)]
        } 

        Promise.all([
          ...editActions,
        ])
          .then(async ([res1, res2, res3]) => {
            this.isFetchingInitialSettings = false
          })
          .catch((error) => {
            handleError(error)
          })
      },

      fetchMenu(params) {
        return new Promise((resolve, reject) => {
          axios
            .get(`/api/v1/menu`, { params })
            .then((response) => {
              this.Menu = response.data.data
              this.totalMenu = response.data.meta.menu_total_count
              resolve(response)
            })
            .catch((err) => {
              handleError(err)
              reject(err)
            })
        })
      },

       fetchMenuById(id) {
        return new Promise((resolve, reject) => {
          axios
            .get(`/api/v1/menu/${id}`)
            .then((response) => {
              Object.assign(this.currentMenu, response.data.data)
              resolve(response)
            })
            .catch((err) => {
              handleError(err)
              reject(err)
            })
        })
      }, 

      addMenu(data) {
        return new Promise((resolve, reject) => {
          axios
            .post('/api/v1/menu', data)
            .then((response) => {
              this.Menu.push(response.data.data)

              const notificationStore = useNotificationStore()
              notificationStore.showNotification({
                type: 'success',
                message: global.t('menu.created_message'),
              })
              resolve(response)
            })

            .catch((err) => {
              handleError(err)
              reject(err)
            })
        })
      },

      updateMenu(data) {
        return new Promise((resolve, reject) => {
          axios
            .put(`/api/v1/menu/${data.id}`, data)
            .then((response) => {
              if (response.data) {
                let pos = this.Menu.findIndex(
                  (Menu) => Menu.id === response.data.data.id
                )
                this.Menu[pos] = data
                const notificationStore = useNotificationStore()
                notificationStore.showNotification({
                  type: 'success',
                  message: global.t('menu.updated_message'),
                })
              }
              resolve(response)
            })
            .catch((err) => {
              handleError(err)
              reject(err)
            })
        })
      },

      deleteMenu(id) {
        const notificationStore = useNotificationStore()
        return new Promise((resolve, reject) => {
          axios
            .post(`/api/v1/menu/delete`, id)
            .then((response) => {
              console.log(response.data)
              let index = this.Menu.findIndex(
                (Menu) => Menu.id === id
              )
              this.Menu.splice(index, 1)
              notificationStore.showNotification({
                type: 'success',
                message: global.t('menu.deleted_message', 1),
              })
              resolve(response)
            })
            .catch((err) => {
              handleError(err)
              reject(err)
            })
        })
      },

      deleteMultipleMenu() {
        const notificationStore = useNotificationStore()

        return new Promise((resolve, reject) => {
          axios
            .post(`/api/v1/menu/delete`, { ids: this.selectedMenu })
            .then((response) => {
              this.selectedMenu.forEach((Menu) => {
                let index = this.Menu.findIndex(
                  (_Menu) => _Menu.id === Menu.id
                )
                this.Menu.splice(index, 1)
              })

              notificationStore.showNotification({
                type: 'success',
                message: global.tc('menu.deleted_message', 2),
              })
              resolve(response)
            })
            .catch((err) => {
              handleError(err)
              reject(err)
            })
        })
      },

      setSelectAllState(data) {
        this.selectAllField = data
      },

      selectMenu(data) {
        this.selectedMenu = data
        if (this.selectedMenu.length === this.Menu.length) {
          this.selectAllField = true
        } else {
          this.selectAllField = false
        }
      },

      selectAllMenu() {
        if (this.selectedMenu.length === this.Menu.length) {
          this.selectedMenu = []
          this.selectAllField = false
        } else {
          let allMenuIds = this.Menu.map((Menu) => Menu.id)
          this.selectedMenu = allMenuIds
          this.selectAllField = true
        }
      },
    },
  })()
}
