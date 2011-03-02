class LocationsController < ApplicationController
  respond_to :html
  menu_item :locations
  
  def index
    @locations = Location.all
    respond_with(@locations)
  end

  def new
    @location = Location.new
    respond_with(@location)
  end

  def edit
    @location = Location.find(params[:id])
    respond_with(@location)
  end

  def create
    @location = Location.new(params[:location])
    flash[:notice] = 'Local criado com sucesso.' if @location.save
    respond_with(@location, :location => locations_url)
  end

  def update
    @location = Location.find(params[:id])
    flash[:notice] = 'Local atualizado com sucesso.' if @location.update_attributes(params[:location])
    respond_with(@location, :location => locations_url)
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    flash[:notice] = "Local apagado com sucesso."  
    respond_with(@location)
  end

end
