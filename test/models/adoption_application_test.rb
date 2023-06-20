# frozen_string_literal: true

# == Schema Information
#
# Table name: adoption_applications
#
#  id                                  :bigint           not null, primary key
#  name_of_dog                         :string
#  name                                :string
#  age                                 :integer
#  street_address                      :string
#  city                                :string
#  state                               :string
#  zip                                 :integer
#  phone                               :string
#  work_phone                          :string
#  occupation                          :string
#  email                               :string
#  how_many_adults_in_house            :string
#  how_many_children_in_house          :string
#  type_of_house                       :string
#  childrens_ages                      :string
#  own_or_rent                         :string
#  landlord_or_hoa_name                :string
#  landlord_or_hoa_address             :string
#  landlord_or_hoa_phone               :string
#  fenced_yard                         :string
#  size_of_fenced_portion              :string
#  willing_to_fence                    :string
#  can_dog_go_over_fence               :string
#  any_medical_or_physical_limitations :string
#  medical_conditions_list             :text
#  household_activity_level            :string
#  reason_for_new_dog                  :text
#  list_all_pets                       :text
#  past_pets_and_type                  :text
#  ever_trained_dogs                   :string
#  commands_taught                     :string
#  correcting_methods                  :text
#  familiar_with_crate_training        :string
#  willing_to_use_crate_training       :string
#  daily_hours_dog_alone               :string
#  where_will_dog_spend_days           :string
#  where_will_dog_sleep                :string
#  how_will_dog_exercise               :string
#  books_read_dog_training             :string
#  does_family_want_dog                :string
#  primary_caregiver                   :string
#  adult_visitors_monthly              :string
#  children_visitors_monthly           :string
#  additional_dog_activities           :string           default([]), is an Array
#  backup_dog_name                     :string
#  gender_preference                   :string
#  age_preference                      :string
#  consider_special_needs_dog          :string
#  financially_prepared                :string
#  previous_dog_health_issues          :text
#  currently_have_vet                  :string
#  allow_contact_vet                   :string
#  vets_name                           :string
#  vets_address                        :string
#  vets_phone                          :string
#  personal_ref_one                    :text
#  personal_ref_two                    :text
#  personal_ref_three                  :text
#  personal_ref_four                   :text
#  out_of_town_caregiver               :string
#  bring_dog_with_moving               :string
#  wags_referrer                       :string
#  additional_information              :text
#  agree_to_heartworm                  :string
#  accept_responsibilities             :string
#  drivers_license                     :string
#  name_on_license                     :string
#  drivers_license_state               :string
#  created_at                          :datetime         not null
#  updated_at                          :datetime         not null
#
require 'test_helper'

class AdoptionApplicationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
