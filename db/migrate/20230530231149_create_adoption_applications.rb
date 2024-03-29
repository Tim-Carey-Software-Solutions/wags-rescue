# frozen_string_literal: true

class CreateAdoptionApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :adoption_applications do |t|
      t.string :name_of_dog
      t.string :name
      t.integer :age
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :phone
      t.string :work_phone
      t.string :occupation
      t.string :email
      t.string :how_many_adults_in_house
      t.string :how_many_children_in_house
      t.string :type_of_house
      t.string :childrens_ages
      t.string :own_or_rent
      t.string :landlord_or_hoa_name
      t.string :landlord_or_hoa_address
      t.string :landlord_or_hoa_phone
      t.string :fenced_yard
      t.string :size_of_fenced_portion
      t.string :willing_to_fence
      t.string :can_dog_go_over_fence
      t.string :any_medical_or_physical_limitations
      t.text :medical_conditions_list
      t.string :household_activity_level
      t.text :reason_for_new_dog
      t.text :list_all_pets
      t.text :past_pets_and_type
      t.string :ever_trained_dogs
      t.string :commands_taught
      t.text :correcting_methods
      t.string :familiar_with_crate_training
      t.string :willing_to_use_crate_training
      t.string :daily_hours_dog_alone
      t.string :where_will_dog_spend_days
      t.string :where_will_dog_sleep
      t.string :how_will_dog_exercise
      t.string :books_read_dog_training
      t.string :does_family_want_dog
      t.string :primary_caregiver
      t.string :adult_visitors_monthly
      t.string :children_visitors_monthly
      t.string :additional_dog_activities, array: true, default: []
      t.string :backup_dog_name
      t.string :gender_preference
      t.string :age_preference
      t.string :consider_special_needs_dog
      t.string :financially_prepared
      t.text :previous_dog_health_issues
      t.string :currently_have_vet
      t.string :allow_contact_vet
      t.string :vets_name
      t.string :vets_address
      t.string :vets_phone
      t.text :personal_ref_one
      t.text :personal_ref_two
      t.text :personal_ref_three
      t.text :personal_ref_four
      t.string :out_of_town_caregiver
      t.string :bring_dog_with_moving
      t.string :wags_referrer
      t.text :additional_information
      t.string :agree_to_heartworm
      t.string :accept_responsibilities
      t.string :drivers_license
      t.string :name_on_license
      t.string :drivers_license_state

      t.timestamps
    end
  end
end
