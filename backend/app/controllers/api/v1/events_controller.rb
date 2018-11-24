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
    loc = Location.new
    loc.coordinates = Coordinates.new
    loc.coordinates.lat = event_params[:location][:coordinates][:lat]
    loc.coordinates.lng = event_params[:location][:coordinates][:lng]
    loc.address = event_params[:location][:address]
    event = Event.create(time:event_params[:time], location:loc, img:event_params[:img], description:event_params[:description])

  end

  def update
    loc = Location.new
    loc.coordinates = Coordinates.new
    loc.coordinates.lat = event_params[:location][:coordinates][:lat]
    loc.coordinates.lng = event_params[:location][:coordinates][:lng]
    loc.address = event_params[:location][:address]
    event = Event.update(time:event_params[:time], location:loc, img:event_params[:img], description:event_params[:description])

  end

  def destroy
    Event.find_by(id: params[:id]).destroy
    head :no_content
  end

  private

  def event_params
    params.permit(:time, {:location => {}}, :img, :description)
  end

end
