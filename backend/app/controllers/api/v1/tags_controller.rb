class Api::V1::TagsController < ApplicationController

  def new
    tag = Tag.new
    render json: tag
  end

  def create
    tag = Tag.create(user_params)
    render json: tag
  end

  def destroy
    tag = Tag.find_by(id: params[:id])
    render json: tag
  end

end
