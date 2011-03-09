class AssetsController < ApplicationController
  respond_to :html
  menu_item :assets
  
  def index
    @assets = Asset.all
    respond_with(@assets)
  end

  def show
    @asset = Asset.find(params[:id])
    respond_with(@asset)
  end

  def new
    @asset = Asset.new
    respond_with(@asset)
  end
  
  def new_multiple
    
  end

  def edit
    @asset = Asset.find(params[:id])
    respond_with(@asset)
  end

  def create
    @asset = Asset.new(params[:asset])
    flash[:notice] = 'Ativo criado com sucesso.' if @asset.save
    respond_with(@asset)
  end
  
  def create_multiple
    
  end

  def update
    @asset = Asset.find(params[:id])
    flash[:notice] = 'Ativo atualizado com sucesso.' if @asset.update_attributes(params[:asset])
    respond_with(@asset)
  end

  def destroy
    @asset = Asset.find(params[:id])
    @asset.destroy
    flash[:notice] = "Ativo apagado com sucesso."  
    respond_with(@asset)
  end
end
