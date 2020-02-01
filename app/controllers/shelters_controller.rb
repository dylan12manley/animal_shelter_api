class SheltersController < ApplicationController

  def index
    @shelters = Shelter.all
    json_response(@shelters)
  end

  def show
    if params[:search]
      @shelter = @shelter.search(params[:search])
    else
      @shelter = Shelter.find(params[:id])
    end
      json_response(@shelter)
  end

  def search
    if params[:search]
      @shelters = @shelters.search(params[:search])
    end
    json_response(@shelters)
  end

  def create
    @shelter = Shelter.create!(shelter_params)
    json_response(@shelter, :created)
  end

  def update
    @shelter = Shelter.find(params[:id])
    if @shelter.update!(shelter_params)
      render status: 200, json: {
        message: "This shelter has been updated successfully."
      }
    end
  end

  def destroy
    @shelter = Shelter.find(params[:id])
    @shelter.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def shelter_params
    params.permit(:shelter_name, :city, :state, :address, :phone_number)
  end
end
