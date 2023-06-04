class Admin::AdoptionApplicationsController < Admin::BaseController
  before_action :set_adoption_application, only: [:show, :destroy, :update, :edit]

  def index
    @adoption_applications = AdoptionApplication.all.order(created_at: :desc)
    authorize @adoption_applications
  end

  def new
    @adoption_application = AdoptionApplication.new
    authorize @adoption_application
  end

  def show
    authorize @adoption_application
  end

  def create
    @adoption_application = AdoptionApplication.new(adoption_application_params)
    authorize @adoption_application
    if @adoption_application.save
      redirect_to root_path, notice: "Thank you for your application! We will be in touch soon."
    else
      render :new
    end
  end


  def edit
    authorize @adoption_application
  end

  def update
    authorize @adoption_application
    if @adoption_application.update(adoption_application_params)
      redirect_to admin_adoption_application_path(@adoption_application), notice: "Application updated"
    else
      render :edit
    end
  end

  def destroy
    authorize @adoption_application
    @adoption_application.destroy
    redirect_to admin_adoption_applications_path, notice: "Application deleted"
  end

  private

  def set_adoption_application
    @adoption_application = AdoptionApplication.find(params[:id])
  end

  def adoption_application_params
    params.require(:adoption_application).permit(:name_of_dog, :name, :age, :street_address, :city, :state, :zip, :phone, :work_phone,
                                                 :occupation, :email, :how_many_adults_in_house, :how_many_children_in_house, :type_of_house, :childrens_ages, :own_or_rent, :landlord_or_hoa_name,
                                                 :landlord_or_hoa_address, :landlord_or_hoa_phone, :fenced_yard, :size_of_fenced_portion, :willing_to_fence, :can_dog_go_over_fence, :any_medical_or_physical_limitations,
                                                 :medical_conditions_list, :household_activity_level, :reason_for_new_dog, :list_all_pets, :past_pets_and_type, :ever_trained_dogs, :commands_taught,
                                                 :correcting_methods, :familiar_with_crate_training, :willing_to_use_crate_training, :daily_hours_dog_alone,
                                                 :where_will_dog_spend_days, :where_will_dog_sleep, :how_will_dog_exercise, :books_read_dog_training,
                                                 :does_family_want_dog, :primary_caregiver, :adult_visitors_monthly, :children_visitors_monthly,
                                                 :backup_dog_name, :gender_preference, :age_preference, :consider_special_needs_dog, :financially_prepared,
                                                 :previous_dog_health_issues, :currently_have_vet, :allow_contact_vet, :vets_name,
                                                 :vets_address, :vets_phone, :personal_ref_one, :personal_ref_two, :personal_ref_three,
                                                 :personal_ref_four, :out_of_town_caregiver, :bring_dog_with_moving, :wags_referrer,
                                                 :additional_information, :agree_to_heartworm, :accept_responsibilities,
                                                 :drivers_license, :name_on_license, :drivers_license_state, additional_dog_activities: []
    )
  end
end
