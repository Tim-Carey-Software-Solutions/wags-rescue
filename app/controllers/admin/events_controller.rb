class Admin::EventsController < ApplicationController
  before_action :set_event, only: [:edit, :show, :update, :destroy]

  def index
    @events  = Event.all
  end

  def new
    @event = Event.new
  end

  def show
  end

  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to admin_events_path }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to admin_events_path }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
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
