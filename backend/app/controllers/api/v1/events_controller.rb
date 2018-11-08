class Api::V1::EventsController < ApplicationController
  def index
    events = Event.all
    render json: events
  end

  def show
    event = Event.find_by(id: params[:id])
    render json: event
  end

  def create
    event = Event.create(event_params)
    render json: event
  end

  def update
    event = Event.update(event_params)
    render json: event
  end

  def destroy
    event = Event.find_by(id: params[:id])
    render json: event
  end

  private

  def event_params
    params.permit(:time, :location, :img, :description)
  end

end
