<template>
  <BasePage>
    <form @submit.prevent="submitMenuData">
      <BasePageHeader :title="pageTitle">
        <BaseBreadcrumb>
          <BaseBreadcrumbItem :title="$t('general.home')" to="dashboard" />

          <BaseBreadcrumbItem
            :title="$t('menu.menu', 2)"
            to="/admin/menu"
          />

          <BaseBreadcrumb-item :title="pageTitle" to="#" active />
        </BaseBreadcrumb>

        <template #actions>
          <div class="flex items-center justify-end">
            <BaseButton type="submit" :loading="isSaving" :disabled="isSaving">
              <template #left="slotProps">
                <BaseIcon name="ArrowDownOnSquareIcon" :class="slotProps.class" />
              </template>
              {{
                isEdit
                  ? $t('menu.update_menu')
                  : $t('menu.save_menu')
              }}
            </BaseButton>
          </div>
        </template>
      </BasePageHeader>

      <BaseCard class="mt-5">
        <!-- Basic Info -->
        <div class="grid grid-cols-5 gap-4 mb-8">
          <BaseInputGrid class="col-span-5 lg:col-span-6">
            <BaseInputGroup
              :label="$t('menu.order_no')"
              required
              :error="
                v$.currentMenu.order_no.$error &&
                v$.currentMenu.order_no.$errors[0].$message
              "
              :content-loading="isFetchingInitialData"
            >
              <BaseInput
                v-model="menuStore.currentMenu.order_no"
                :content-loading="isFetchingInitialData"
                type="text"
                name="order_no"
                class=""
                :invalid="v$.currentMenu.order_no.$error"
                @input="v$.currentMenu.order_no.$touch()"
              />
            </BaseInputGroup>
            <BaseInputGroup
              :label="$t('menu.en')"
              required
              :error="
                v$.currentMenu.en.$error &&
                v$.currentMenu.en.$errors[0].$message
              "
              :content-loading="isFetchingInitialData"
            >
              <BaseInput
                v-model="menuStore.currentMenu.en"
                :content-loading="isFetchingInitialData"
                type="text"
                name="en"
                class=""
                :invalid="v$.currentMenu.en.$error"
                @input="v$.currentMenu.en.$touch()"
              />
            </BaseInputGroup>
            <BaseInputGroup
              :label="$t('menu.bn')"
              required
              :error="
                v$.currentMenu.bn.$error &&
                v$.currentMenu.bn.$errors[0].$message
              "
              :content-loading="isFetchingInitialData"
            >
              <BaseInput
                v-model="menuStore.currentMenu.bn"
                :content-loading="isFetchingInitialData"
                type="text"
                name="bn"
                class=""
                :invalid="v$.currentMenu.bn.$error"
                @input="v$.currentMenu.bn.$touch()"
              />
            </BaseInputGroup>
            <BaseInputGroup
              :label="$t('menu.path')"
              required
              :error="
                v$.currentMenu.path.$error &&
                v$.currentMenu.path.$errors[0].$message
              "
              :content-loading="isFetchingInitialData"
            >
              <BaseInput
                v-model="menuStore.currentMenu.path"
                :content-loading="isFetchingInitialData"
                type="text"
                name="path"
                class=""
                :invalid="v$.currentMenu.path.$error"
                @input="v$.currentMenu.path.$touch()"
              />
            </BaseInputGroup>
            <BaseInputGroup
              :label="$t('menu.icon')"
              required
              :error="
                v$.currentMenu.icon.$error &&
                v$.currentMenu.icon.$errors[0].$message
              "
              :content-loading="isFetchingInitialData"
            >
              <BaseInput
                v-model="menuStore.currentMenu.icon"
                :content-loading="isFetchingInitialData"
                type="text"
                name="icon"
                class=""
                :invalid="v$.currentMenu.icon.$error"
                @input="v$.currentMenu.icon.$touch()"
              />
            </BaseInputGroup>
            <BaseInputGroup
              :label="$t('menu.location')"
              :content-loading="isFetchingInitialData"
              :error="
                v$.currentMenu.location.$error &&
                v$.currentMenu.location.$errors[0].$message
              "
              required
            >
              <BaseMultiselect
                v-model="menuStore.currentMenu.location"
                value-prop="id"
                label="name"
                track-by="name"
                :content-loading="isFetchingInitialData"
                :options="{'Sidebar':'Sidebar','Topbar':'Topbar'}"
                searchable
                :can-deselect="false"
                :placeholder="$t('general.select')"
                :invalid="v$.currentMenu.location.$error"
                class="w-full"
              >
              </BaseMultiselect>
            </BaseInputGroup>
            <BaseInputGroup
              :label="$t('menu.menu_status')"
              :content-loading="isFetchingInitialData"
              :error="
                v$.currentMenu.menu_status.$error &&
                v$.currentMenu.menu_status.$errors[0].$message
              "
              required
            >
              <BaseMultiselect
                v-model="menuStore.currentMenu.menu_status"
                value-prop="id"
                label="name"
                track-by="name"
                :content-loading="isFetchingInitialData"
                :options="{'Active':'Active','Inactive':'Inactive'}"
                searchable
                :can-deselect="false"
                :placeholder="$t('general.select')"
                :invalid="v$.currentMenu.menu_status.$error"
                class="w-full"
              >
              </BaseMultiselect>
            </BaseInputGroup>
          </BaseInputGrid>
        </div>
      </BaseCard>
    </form>
  </BasePage>
</template>

<script setup>
import { useMenuStore } from '@/scripts/admin/stores/menu'
import useVuelidate from '@vuelidate/core'
import {
  helpers,
  minLength,
  required
} from '@vuelidate/validators'
import { computed, ref } from 'vue'
import { useI18n } from 'vue-i18n'
import { useRoute, useRouter } from 'vue-router'

const menuStore = useMenuStore()

const customFieldValidationScope = 'customFields'

const { t } = useI18n()

const router = useRouter()
const route = useRoute()

let isFetchingInitialData = ref(false)

let active = ref(false)
const isSaving = ref(false)

const isEdit = computed(() => route.name === 'menu.edit')

const pageTitle = computed(() =>
  isEdit.value ? t('menu.edit_menu') : t('menu.new_menu'),
)

const rules = computed(() => {
  return {
    currentMenu: {
      order_no: {
        required: helpers.withMessage(t('validation.required'), required)
      },
      en: {
        required: helpers.withMessage(t('validation.required'), required),
        minLength: helpers.withMessage(
          t('validation.name_min_length', { count: 3 }),
          minLength(3)
        ),
      },
      bn: {
        required: helpers.withMessage(t('validation.required'), required),
        minLength: helpers.withMessage(
          t('validation.name_min_length', { count: 3 }),
          minLength(3)
        ),
      },
      path: {
        required: helpers.withMessage(t('validation.required'), required),
      },
      icon: {
        required: helpers.withMessage(t('validation.required'), required),
      },
      location: {
        required: helpers.withMessage(t('validation.required'), required),
      },
      menu_status: {
        required: helpers.withMessage(t('validation.required'), required),
      },
    },
  }
})


const v$ = useVuelidate(rules, menuStore, {
  $scope: customFieldValidationScope,
})

menuStore.resetCurrentMenu()

menuStore.fetchMenuInitialSettings(isEdit.value)

async function submitMenuData() {
  //console.log('submitMenuData called')
  v$.value.$touch()

  if (v$.value.$invalid) {
    return true
  } 

  isSaving.value = true

  let data = {
    ...menuStore.currentMenu,
  }
  let response = null

  try {
    const action = isEdit.value
      ? menuStore.updateMenu
      : menuStore.addMenu
    response = await action(data)
  } catch (err) {
    isSaving.value = false
    return
  }

  router.push(`/admin/menu`)
}
</script>
