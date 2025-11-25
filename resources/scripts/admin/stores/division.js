import DivisionStub from '@/scripts/admin/stub/Division'
import { handleError } from '@/scripts/helpers/error-handling'
import { useNotificationStore } from '@/scripts/stores/notification'
import axios from 'axios'
import { defineStore } from 'pinia'
import { useRoute } from 'vue-router'

export const useDivisionStore = (useWindow = false) => {
  const defineStoreFunc = useWindow ? window.pinia.defineStore : defineStore
  const { global } = window.i18n

  return defineStoreFunc({
    id: 'Division',
    state: () => ({
      Division: [],
      totalDivision: 0,
      selectAllField: false,
      selectedDivision: [],
      selectedViewDivision: {},
      isFetchingInitialSettings: false,
      isFetchingViewData: false,
      currentDivision: {
        ...DivisionStub(),
      },
      editDivision: null
    }),

    getters: {
      isEdit: (state) => (state.currentDivision.id ? true : false),
    },

    actions: {
      resetCurrentDivision() {
        this.currentDivision = {
          ...DivisionStub(),
        }
      },
      fetchDivisionInitialSettings(isEdit) {
        const route = useRoute()
        this.isFetchingInitialSettings = true
        let editActions = []
        if (isEdit) {
          editActions = [this.fetchDivisionById(route.params.id)]
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

      fetchDivision(params) {
        return new Promise((resolve, reject) => {
          axios
            .get(`/api/v1/division`, { params })
            .then((response) => {
              this.Division = response.data.data
              this.totalDivision = response.data.meta.division_total_count
              resolve(response)
            })
            .catch((err) => {
              handleError(err)
              reject(err)
            })
        })
      },

       fetchDivisionById(id) {
        return new Promise((resolve, reject) => {
          axios
            .get(`/api/v1/division/${id}`)
            .then((response) => {
              Object.assign(this.currentDivision, response.data.data)
              resolve(response)
            })
            .catch((err) => {
              handleError(err)
              reject(err)
            })
        })
      }, 

      addDivision(data) {
        return new Promise((resolve, reject) => {
          axios
            .post('/api/v1/division', data)
            .then((response) => {
              this.Division.push(response.data.data)

              const notificationStore = useNotificationStore()
              notificationStore.showNotification({
                type: 'success',
                message: global.t('division.created_message'),
              })
              resolve(response)
            })

            .catch((err) => {
              handleError(err)
              reject(err)
            })
        })
      },

      updateDivision(data) {
        return new Promise((resolve, reject) => {
          axios
            .put(`/api/v1/division/${data.id}`, data)
            .then((response) => {
              if (response.data) {
                let pos = this.Division.findIndex(
                  (Division) => Division.id === response.data.data.id
                )
                this.Division[pos] = data
                const notificationStore = useNotificationStore()
                notificationStore.showNotification({
                  type: 'success',
                  message: global.t('division.updated_message'),
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

      deleteDivision(id) {
        const notificationStore = useNotificationStore()
        return new Promise((resolve, reject) => {
          axios
            .post(`/api/v1/division/delete`, id)
            .then((response) => {
              console.log(response.data)
              let index = this.Division.findIndex(
                (Division) => Division.id === id
              )
              this.Division.splice(index, 1)
              notificationStore.showNotification({
                type: 'success',
                message: global.t('division.deleted_message', 1),
              })
              resolve(response)
            })
            .catch((err) => {
              handleError(err)
              reject(err)
            })
        })
      },

      deleteMultipleDivision() {
        const notificationStore = useNotificationStore()

        return new Promise((resolve, reject) => {
          axios
            .post(`/api/v1/division/delete`, { ids: this.selectedDivision })
            .then((response) => {
              this.selectedDivision.forEach((Division) => {
                let index = this.Division.findIndex(
                  (_Division) => _Division.id === Division.id
                )
                this.Division.splice(index, 1)
              })

              notificationStore.showNotification({
                type: 'success',
                message: global.tc('division.deleted_message', 2),
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

      selectDivision(data) {
        this.selectedDivision = data
        if (this.selectedDivision.length === this.Division.length) {
          this.selectAllField = true
        } else {
          this.selectAllField = false
        }
      },

      selectAllDivision() {
        if (this.selectedDivision.length === this.Division.length) {
          this.selectedDivision = []
          this.selectAllField = false
        } else {
          let allDivisionIds = this.Division.map((Division) => Division.id)
          this.selectedDivision = allDivisionIds
          this.selectAllField = true
        }
      },
    },
  })()
}
