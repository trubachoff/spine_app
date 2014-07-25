class EventsController < ApplicationController

  def index
    @events = Event.all
    respond_to do |format|
      format.html
      format.json { render json: @events }
    end
  end

  def show
    @event = Event.find params[:id]
    render json: @event
  end

  def create
    @event = Event.new(event_params)
    render nothing: true
    head :bad_request if !@event.save
  end

  def new
    @event = Event.new
  end

  def update
    @event = Event.find params[:id]
    render nothing: true
    head :bad_request if !@event.update(event_params)
  end

  def destroy
    @event = Event.find params[:id]
    @event.destroy
  end

  def event_params
    params.require(:event).permit(:date, :comment, :kind, :state, :user_id, :customer_id)
  end

end
