<template>
  <BasePage>
    <BasePageHeader :title="pageTitle">
      <BaseBreadcrumb>
        <BaseBreadcrumbItem :title="$t('general.home')" to="/admin/dashboard" />
        <BaseBreadcrumbItem :title="$t('users.user', 2)" to="/admin/user_management/users" />
        <BaseBreadcrumbItem :title="pageTitle" to="#" active />
      </BaseBreadcrumb>
    </BasePageHeader>

    <form action="" autocomplete="off" @submit.prevent="submitUser">
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
                v-model.trim="userStore.userData.name"
                :content-loading="isFetchingInitialData"
                :invalid="v$.userData.name.$error"
                @input="v$.userData.name.$touch()"
              >
              </BaseInput>
            </BaseInputGroup>

            <BaseInputGroup
              :content-loading="isFetchingInitialData"
              :label="$t('users.email')"
              :error="
                v$.userData.email.$error &&
                v$.userData.email.$errors[0].$message
              "
              required
            >
              <BaseInput
                v-model.trim="userStore.userData.email"
                type="email"
                :content-loading="isFetchingInitialData"
                :invalid="v$.userData.email.$error"
                @input="v$.userData.email.$touch()"
              >
              </BaseInput>
            </BaseInputGroup>

            <BaseInputGroup
              :content-loading="isFetchingInitialData"
              :label="$t('users.password')"
              :error="
                v$.userData.password.$error &&
                v$.userData.password.$errors[0].$message
              "
              :required="!isEdit"
            >
              <BaseInput
                v-model="userStore.userData.password"
                name="new-password"
                autocomplete="new-password"
                :content-loading="isFetchingInitialData"
                type="password"
                :invalid="v$.userData.password.$error"
                @input="v$.userData.password.$touch()"
              >
              </BaseInput>
            </BaseInputGroup>

            <BaseInputGroup
              :content-loading="isFetchingInitialData"
              :label="$t('users.phone')"
            >
              <BaseInput
                v-model.trim="userStore.userData.phone"
                :content-loading="isFetchingInitialData"
              ></BaseInput>
            </BaseInputGroup>
            <BaseInputGroup
              :label="$t('users.roles')"
              :content-loading="isFetchingInitialData"
              :error="
                v$.userData.role_ids.$error &&
                v$.userData.role_ids.$errors[0].$message
              "
              required
            >
              <BaseMultiselect
                v-model="userStore.userData.role_ids"
                mode="tags"
                value-prop="id"
                label="name"
                track-by="name"
                :content-loading="isFetchingInitialData"
                :options="userStore.roles"
                searchable
                :can-deselect="false"
                :placeholder="$t('general.select')"
                :invalid="v$.userData.role_ids.$error"
                class="w-full"
              >
              </BaseMultiselect>
            </BaseInputGroup>
            <BaseInputGroup
              :label="$t('users.scope')"
              :content-loading="isFetchingInitialData"
              :error="
                v$.userData.scope_id.$error &&
                v$.userData.scope_id.$errors[0].$message
              "
              required
            >
              <BaseMultiselect
                v-model="userStore.userData.scope_id"
                value-prop="id"
                label="name"
                track-by="name"
                :content-loading="isFetchingInitialData"
                :options="userStore.scopes"
                searchable
                :can-deselect="false"
                :placeholder="$t('general.select')"
                :invalid="v$.userData.scope_id.$error"
                class="w-full"
              >
              </BaseMultiselect>
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
import { useUsersStore } from '@/scripts/admin/stores/users'
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

const userStore = useUsersStore()

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
      },
      email: {
        required: helpers.withMessage(t('validation.required'), required),
        email: helpers.withMessage(t('validation.email_incorrect'), email),
      },
      password: {
        required: requiredIf(function () {
          helpers.withMessage(t('validation.required'), required)
          return !isEdit.value
        }),
        minLength: helpers.withMessage(
          t('validation.password_min_length', { count: 8 }),
          minLength(8)
        ),
      },
      scope_id: {
        required: helpers.withMessage(t('validation.required'), required),
      },
      role_ids: {
        required: helpers.withMessage(t('validation.required'), required),
      },
    },
  }
})

const companyArrayRules = {
  role: {
    required: helpers.withMessage(t('validation.required'), required),
  },
}

const v$ = useVuelidate(rules, userStore, {
  $scope: true,
})

loadInitialData()

userStore.resetUserData()

async function loadInitialData() {
  isFetchingInitialData.value = true
  try {
    if (isEdit.value) {
      await userStore.fetchUser(route.params.id)
    }
    await userStore.fetchRoles()
    await userStore.fetchScopes()
  } catch {
    isFetchingInitialData.value = false
  }

  isFetchingInitialData.value = false
}

async function submitUser() {
  v$.value.$touch()

  if (v$.value.$invalid) {
    return true
  }

  try {
    isSaving.value = true
    let data = {
      ...userStore.userData
    }

  /* console.log('submitUserData called', data)
  return; */

    const action = isEdit.value ? userStore.updateUser : userStore.addUser
    await action(data)

    router.push('/admin/user_management/users')
    isSaving.value = false
  } catch (error) {
    isSaving.value = false
  }
}
</script>
