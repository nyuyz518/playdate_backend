class Api::V1::EventsController < ApplicationController

  def index
    events = Event.all
    render json: events
  end

  def search
    mytime = search_params[:time]
    events = Event.where(["start_time >= ?", mytime])
    render json: events
  end

  def show
    event = Event.find_by(id: params[:id])
    render json: event
  end

  def create
    Event.create(
      start_time: event_params[:start_time],
      end_time: event_params[:end_time],
      address:event_params[:address],
      lat:event_params[:lat],
      lng:event_params[:lng],
      img:event_params[:img],
      description:event_params[:description])
  end

  def update
    Event.find_by(id: event_params[:id]).update(
      start_time: event_params[:start_time],
      end_time: event_params[:end_time],
      address:event_params[:address],
      lat:event_params[:lat],
      lng:event_params[:lng],
      img:event_params[:img],
      description:event_params[:description])
  end

  def destroy
    Event.find_by(id: params[:id]).destroy
    head :no_content
  end

  private

  def search_params
    params.permit(:time, :description)
  end
  def event_params
    params.permit(:id, :start_time, :end_time, :address, :lat, :lng, :img, :description)
  end

end
