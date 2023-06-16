# frozen_string_literal: true

require 'administrate/base_dashboard'

class AdoptionApplicationDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    accept_responsibilities: Field::String,
    additional_dog_activities: Field::String,
    additional_information: Field::Text,
    adult_visitors_monthly: Field::String,
    age: Field::Number,
    age_preference: Field::String,
    agree_to_heartworm: Field::String,
    allow_contact_vet: Field::String,
    any_medical_or_physical_limitations: Field::String,
    backup_dog_name: Field::String,
    books_read_dog_training: Field::String,
    bring_dog_with_moving: Field::String,
    can_dog_go_over_fence: Field::String,
    children_visitors_monthly: Field::String,
    childrens_ages: Field::String,
    city: Field::String,
    commands_taught: Field::String,
    consider_special_needs_dog: Field::String,
    correcting_methods: Field::Text,
    currently_have_vet: Field::String,
    daily_hours_dog_alone: Field::String,
    does_family_want_dog: Field::String,
    drivers_license: Field::String,
    drivers_license_state: Field::String,
    email: Field::String,
    ever_trained_dogs: Field::String,
    familiar_with_crate_training: Field::String,
    fenced_yard: Field::String,
    financially_prepared: Field::String,
    gender_preference: Field::String,
    household_activity_level: Field::String,
    how_many_adults_in_house: Field::String,
    how_many_children_in_house: Field::String,
    how_will_dog_exercise: Field::String,
    landlord_or_hoa_address: Field::String,
    landlord_or_hoa_name: Field::String,
    landlord_or_hoa_phone: Field::String,
    list_all_pets: Field::Text,
    medical_conditions_list: Field::Text,
    name_of_dog: Field::String,
    name_on_license: Field::String,
    occupation: Field::String,
    out_of_town_caregiver: Field::String,
    own_or_rent: Field::String,
    past_pets_and_type: Field::Text,
    personal_ref_four: Field::Text,
    personal_ref_one: Field::Text,
    personal_ref_three: Field::Text,
    personal_ref_two: Field::Text,
    phone: Field::String,
    previous_dog_health_issues: Field::Text,
    primary_caregiver: Field::String,
    reason_for_new_dog: Field::Text,
    size_of_fenced_portion: Field::String,
    state: Field::String,
    street_address: Field::String,
    type_of_house: Field::String,
    vets_address: Field::String,
    vets_name: Field::String,
    vets_phone: Field::String,
    wags_referrer: Field::String,
    where_will_dog_sleep: Field::String,
    where_will_dog_spend_days: Field::String,
    willing_to_fence: Field::String,
    willing_to_use_crate_training: Field::String,
    work_phone: Field::String,
    zip: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    name
    name_of_dog
    email
    phone
    city
    state
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    name_of_dog
    name
    accept_responsibilities
    additional_dog_activities
    additional_information
    adult_visitors_monthly
    age
    age_preference
    agree_to_heartworm
    allow_contact_vet
    any_medical_or_physical_limitations
    backup_dog_name
    books_read_dog_training
    bring_dog_with_moving
    can_dog_go_over_fence
    children_visitors_monthly
    childrens_ages
    city
    commands_taught
    consider_special_needs_dog
    correcting_methods
    currently_have_vet
    daily_hours_dog_alone
    does_family_want_dog
    drivers_license
    drivers_license_state
    email
    ever_trained_dogs
    familiar_with_crate_training
    fenced_yard
    financially_prepared
    gender_preference
    household_activity_level
    how_many_adults_in_house
    how_many_children_in_house
    how_will_dog_exercise
    landlord_or_hoa_address
    landlord_or_hoa_name
    landlord_or_hoa_phone
    list_all_pets
    medical_conditions_list
    name_on_license
    occupation
    out_of_town_caregiver
    own_or_rent
    past_pets_and_type
    personal_ref_four
    personal_ref_one
    personal_ref_three
    personal_ref_two
    phone
    previous_dog_health_issues
    primary_caregiver
    reason_for_new_dog
    size_of_fenced_portion
    state
    street_address
    type_of_house
    vets_address
    vets_name
    vets_phone
    wags_referrer
    where_will_dog_sleep
    where_will_dog_spend_days
    willing_to_fence
    willing_to_use_crate_training
    work_phone
    zip
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    accept_responsibilities
    additional_dog_activities
    additional_information
    adult_visitors_monthly
    age
    age_preference
    agree_to_heartworm
    allow_contact_vet
    any_medical_or_physical_limitations
    backup_dog_name
    books_read_dog_training
    bring_dog_with_moving
    can_dog_go_over_fence
    children_visitors_monthly
    childrens_ages
    city
    commands_taught
    consider_special_needs_dog
    correcting_methods
    currently_have_vet
    daily_hours_dog_alone
    does_family_want_dog
    drivers_license
    drivers_license_state
    email
    ever_trained_dogs
    familiar_with_crate_training
    fenced_yard
    financially_prepared
    gender_preference
    household_activity_level
    how_many_adults_in_house
    how_many_children_in_house
    how_will_dog_exercise
    landlord_or_hoa_address
    landlord_or_hoa_name
    landlord_or_hoa_phone
    list_all_pets
    medical_conditions_list
    name
    name_of_dog
    name_on_license
    occupation
    out_of_town_caregiver
    own_or_rent
    past_pets_and_type
    personal_ref_four
    personal_ref_one
    personal_ref_three
    personal_ref_two
    phone
    previous_dog_health_issues
    primary_caregiver
    reason_for_new_dog
    size_of_fenced_portion
    state
    street_address
    type_of_house
    vets_address
    vets_name
    vets_phone
    wags_referrer
    where_will_dog_sleep
    where_will_dog_spend_days
    willing_to_fence
    willing_to_use_crate_training
    work_phone
    zip
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how adoption applications are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(adoption_application)
  #   "AdoptionApplication ##{adoption_application.id}"
  # end
end
