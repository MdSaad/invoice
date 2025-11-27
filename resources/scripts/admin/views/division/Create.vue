<template>
  <BasePage>
    <form @submit.prevent="submitDivisionData">
      <BasePageHeader :title="pageTitle">
        <BaseBreadcrumb>
          <BaseBreadcrumbItem :title="$t('general.home')" to="dashboard" />

          <BaseBreadcrumbItem
            :title="$t('division.division', 2)"
            to="/admin/division"
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
                  ? $t('division.update_division')
                  : $t('division.save_division')
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
              :label="$t('division.order_no')"
              required
              :error="
                v$.currentDivision.order_no.$error &&
                v$.currentDivision.order_no.$errors[0].$message
              "
              :content-loading="isFetchingInitialData"
            >
              <BaseInput
                v-model="divisionStore.currentDivision.order_no"
                :content-loading="isFetchingInitialData"
                type="text"
                name="order_no"
                class=""
                :invalid="v$.currentDivision.order_no.$error"
                @input="v$.currentDivision.order_no.$touch()"
              />
            </BaseInputGroup>
            <BaseInputGroup
              :label="$t('division.division_en_name')"
              required
              :error="
                v$.currentDivision.division_en_name.$error &&
                v$.currentDivision.division_en_name.$errors[0].$message
              "
              :content-loading="isFetchingInitialData"
            >
              <BaseInput
                v-model="divisionStore.currentDivision.division_en_name"
                :content-loading="isFetchingInitialData"
                type="text"
                name="division_en_name"
                class=""
                :invalid="v$.currentDivision.division_en_name.$error"
                @input="v$.currentDivision.division_en_name.$touch()"
              />
            </BaseInputGroup>
            <BaseInputGroup
              :label="$t('division.division_bn_name')"
              required
              :error="
                v$.currentDivision.division_bn_name.$error &&
                v$.currentDivision.division_bn_name.$errors[0].$message
              "
              :content-loading="isFetchingInitialData"
            >
              <BaseInput
                v-model="divisionStore.currentDivision.division_bn_name"
                :content-loading="isFetchingInitialData"
                type="text"
                name="division_bn_name"
                class=""
                :invalid="v$.currentDivision.division_bn_name.$error"
                @input="v$.currentDivision.division_bn_name.$touch()"
              />
            </BaseInputGroup>
            <BaseInputGroup
              :label="$t('division.division_short_name')"
              required
              :error="
                v$.currentDivision.division_short_name.$error &&
                v$.currentDivision.division_short_name.$errors[0].$message
              "
              :content-loading="isFetchingInitialData"
            >
              <BaseInput
                v-model="divisionStore.currentDivision.division_short_name"
                :content-loading="isFetchingInitialData"
                type="text"
                name="division_short_name"
                class=""
                :invalid="v$.currentDivision.division_short_name.$error"
                @input="v$.currentDivision.division_short_name.$touch()"
              />
            </BaseInputGroup>
            <BaseInputGroup
              :label="$t('division.url')"
              required
              :error="
                v$.currentDivision.url.$error &&
                v$.currentDivision.url.$errors[0].$message
              "
              :content-loading="isFetchingInitialData"
            >
              <BaseInput
                v-model="divisionStore.currentDivision.url"
                :content-loading="isFetchingInitialData"
                type="text"
                name="url"
                class=""
                :invalid="v$.currentDivision.url.$error"
                @input="v$.currentDivision.url.$touch()"
              />
            </BaseInputGroup>
          </BaseInputGrid>
        </div>
      </BaseCard>
    </form>
  </BasePage>
</template>

<script setup>
import { useDivisionStore } from '@/scripts/admin/stores/division'
import useVuelidate from '@vuelidate/core'
import {
  helpers,
  minLength,
  required
} from '@vuelidate/validators'
import { computed, ref } from 'vue'
import { useI18n } from 'vue-i18n'
import { useRoute, useRouter } from 'vue-router'

const divisionStore = useDivisionStore()

const customFieldValidationScope = 'customFields'

const { t } = useI18n()

const router = useRouter()
const route = useRoute()

let isFetchingInitialData = ref(false)

let active = ref(false)
const isSaving = ref(false)

const isEdit = computed(() => route.name === 'division.edit')

const pageTitle = computed(() =>
  isEdit.value ? t('division.edit_division') : t('division.new_division'),
)

const rules = computed(() => {
  return {
    currentDivision: {
      order_no: {
        required: helpers.withMessage(t('validation.required'), required)
      },
      division_en_name: {
        required: helpers.withMessage(t('validation.required'), required),
        minLength: helpers.withMessage(
          t('validation.name_min_length', { count: 3 }),
          minLength(3)
        ),
      },
      division_bn_name: {
        required: helpers.withMessage(t('validation.required'), required),
        minLength: helpers.withMessage(
          t('validation.name_min_length', { count: 3 }),
          minLength(3)
        ),
      },
      division_short_name: {
        required: helpers.withMessage(t('validation.required'), required),
        minLength: helpers.withMessage(
          t('validation.name_min_length', { count: 3 }),
          minLength(3)
        ),
      },
      url: {
        required: helpers.withMessage(t('validation.required'), required),
      },
    },
  }
})


const v$ = useVuelidate(rules, divisionStore, {
  $scope: customFieldValidationScope,
})

divisionStore.resetCurrentDivision()

divisionStore.fetchDivisionInitialSettings(isEdit.value)

const parentId = route.query.parent_id ?? null

async function submitDivisionData() {
  //console.log('submitDivisionData called')
  v$.value.$touch()

  if (v$.value.$invalid) {
    return true
  } 

  isSaving.value = true

  let data = {
    ...divisionStore.currentDivision
  }
  let response = null

  try {
    const action = isEdit.value
      ? divisionStore.updateDivision
      : divisionStore.addDivision
    response = await action(data)
  } catch (err) {
    isSaving.value = false
    return
  }
  router.push(`/admin/global_settings/region_area_settings/division`)
}
</script>
