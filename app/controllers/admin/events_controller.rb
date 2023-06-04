class Admin::EventsController < Admin::BaseController
  before_action :set_event, only: [:edit, :show, :update, :destroy]

  def index
    @events  = Event.all.order(when: :asc)
    authorize @events
  end

  def new
    @event = Event.new
    authorize @event
  end

  def show
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    authorize @event

    respond_to do |format|
      if @event.save
        format.html { redirect_to admin_events_path }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    authorize @event
  end

  def update
    authorize @event
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to admin_events_path }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    authorize @event
    @event.destroy

    respond_to do |format|
      format.html { redirect_to admin_events_path }
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :directions, :start, :end, :location, :address, :when)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
