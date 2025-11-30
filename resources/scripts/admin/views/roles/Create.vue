<template>
  <BasePage>
    <BasePageHeader :title="pageTitle">
      <BaseBreadcrumb>
        <BaseBreadcrumbItem :title="$t('general.home')" to="/admin/dashboard" />
        <BaseBreadcrumbItem :title="$t('users.user', 2)" to="/admin/user_management/users" />
        <BaseBreadcrumbItem :title="pageTitle" to="#" active />
      </BaseBreadcrumb>
    </BasePageHeader>

    <form action="" autocomplete="off" @submit.prevent="submitRole">
      <div class="h-screen grid grid-cols-12">
        <BaseCard class="mt-6 col-span-12 md:col-span-12">
          <BaseInputGrid layout="three-column">
            <BaseInputGroup
              :content-loading="isFetchingInitialData"
              :label="$t('users.name')"
              :error="
                v$.userData.name.$error && v$.userData.name.$errors[0].$message
              "
              required
            >
              <BaseInput
                v-model.trim="roleStore.userData.name"
                :content-loading="isFetchingInitialData"
                :invalid="v$.userData.name.$error"
                @input="v$.userData.name.$touch()"
              >
              </BaseInput>
            </BaseInputGroup>
          </BaseInputGrid>
          <BaseButton
            :content-loading="isFetchingInitialData"
            type="submit"
            :loading="isSaving"
            :disabled="isSaving"
            class="mt-6"
          >
            <template #left="slotProps">
              <BaseIcon
                v-if="!isSaving"
                name="ArrowDownOnSquareIcon"
                :class="slotProps.class"
              />
            </template>
            {{ isEdit ? $t('users.update_user') : $t('users.save_user') }}
          </BaseButton>
        </BaseCard>
      </div>
    </form>
  </BasePage>
</template>

<script setup>
import { useCompanyStore } from '@/scripts/admin/stores/company'
import { useRoleStore } from '@/scripts/admin/stores/role'
import useVuelidate from '@vuelidate/core'
import {
  email,
  helpers,
  minLength,
  required,
  requiredIf,
} from '@vuelidate/validators'
import { computed, ref } from 'vue'
import { useI18n } from 'vue-i18n'
import { useRoute, useRouter } from 'vue-router'

const roleStore = useRoleStore()

const { t } = useI18n()
const route = useRoute()
const router = useRouter()
const companyStore = useCompanyStore()

let isSaving = ref(false)
let isFetchingInitialData = ref(false)
let selectedCompanies = ref([])
let companies = ref([])

const isEdit = computed(() => route.name === 'users.edit')

const pageTitle = computed(() =>
  isEdit.value ? t('users.edit_user') : t('users.new_user')
)

const rules = computed(() => {
  return {
    userData: {
      name: {
        required: helpers.withMessage(t('validation.required'), required),
        minLength: helpers.withMessage(
          t('validation.name_min_length', { count: 3 }),
          minLength(3)
        ),
      }
    },
  }
})

const companyArrayRules = {
  role: {
    required: helpers.withMessage(t('validation.required'), required),
  },
}

const v$ = useVuelidate(rules, roleStore, {
  $scope: true,
})

loadInitialData()

//roleStore.resetRoleData()

async function loadInitialData() {
  isFetchingInitialData.value = true
  try {
    if (isEdit.value) {
      await roleStore.fetchRole(route.params.id)
    }
    await roleStore.fetchRoles()
    await roleStore.fetchScopes()
  } catch {
    isFetchingInitialData.value = false
  }

  isFetchingInitialData.value = false
}

async function submitRole() {
  v$.value.$touch()

  if (v$.value.$invalid) {
    return true
  }

  try {
    isSaving.value = true
    let data = {
      ...roleStore.userData
    }

  /* console.log('submitRoleData called', data)
  return; */

    const action = isEdit.value ? roleStore.updateRole : roleStore.addRole
    await action(data)

    router.push('/admin/user_management/users')
    isSaving.value = false
  } catch (error) {
    isSaving.value = false
  }
}
</script>
