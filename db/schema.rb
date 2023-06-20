# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_07_182453) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adoption_applications", force: :cascade do |t|
    t.string "name_of_dog"
    t.string "name"
    t.integer "age"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.string "phone"
    t.string "work_phone"
    t.string "occupation"
    t.string "email"
    t.string "how_many_adults_in_house"
    t.string "how_many_children_in_house"
    t.string "type_of_house"
    t.string "childrens_ages"
    t.string "own_or_rent"
    t.string "landlord_or_hoa_name"
    t.string "landlord_or_hoa_address"
    t.string "landlord_or_hoa_phone"
    t.string "fenced_yard"
    t.string "size_of_fenced_portion"
    t.string "willing_to_fence"
    t.string "can_dog_go_over_fence"
    t.string "any_medical_or_physical_limitations"
    t.text "medical_conditions_list"
    t.string "household_activity_level"
    t.text "reason_for_new_dog"
    t.text "list_all_pets"
    t.text "past_pets_and_type"
    t.string "ever_trained_dogs"
    t.string "commands_taught"
    t.text "correcting_methods"
    t.string "familiar_with_crate_training"
    t.string "willing_to_use_crate_training"
    t.string "daily_hours_dog_alone"
    t.string "where_will_dog_spend_days"
    t.string "where_will_dog_sleep"
    t.string "how_will_dog_exercise"
    t.string "books_read_dog_training"
    t.string "does_family_want_dog"
    t.string "primary_caregiver"
    t.string "adult_visitors_monthly"
    t.string "children_visitors_monthly"
    t.string "additional_dog_activities", default: [], array: true
    t.string "backup_dog_name"
    t.string "gender_preference"
    t.string "age_preference"
    t.string "consider_special_needs_dog"
    t.string "financially_prepared"
    t.text "previous_dog_health_issues"
    t.string "currently_have_vet"
    t.string "allow_contact_vet"
    t.string "vets_name"
    t.string "vets_address"
    t.string "vets_phone"
    t.text "personal_ref_one"
    t.text "personal_ref_two"
    t.text "personal_ref_three"
    t.text "personal_ref_four"
    t.string "out_of_town_caregiver"
    t.string "bring_dog_with_moving"
    t.string "wags_referrer"
    t.text "additional_information"
    t.string "agree_to_heartworm"
    t.string "accept_responsibilities"
    t.string "drivers_license"
    t.string "name_on_license"
    t.string "drivers_license_state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "stripe_customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.time "start"
    t.time "end"
    t.date "when"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
