class Admin::UsersController < Admin::BaseController
  before_action :set_user, only: [:edit, :show, :update, :destroy]

  def index
    @users = User.all
    authorize @users
  end

  def new
    @user = User.new
    authorize @user
  end

  def show
    authorize @user
  end

  def create
    @user = User.new(user_params)
    authorize @user

    respond_to do |format|
      if @user.save
        format.html { redirect_to admin_users_path, notice: "User created" }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    authorize @user
  end

  def update
    authorize @user

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to admin_users_path, notice: "User updated" }
      else
        puts @user.errors.full_messages
        format.html { render :edit }
      end
    end
  end

  def destroy
    authorize @user
    @user.destroy

    respond_to do |format|
      format.html { redirect_to admin_users_path }
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :admin)
  end
end