class TraitTypesController < ApplicationController

  def index
    @trait_types = TraitType.all
  end

  def show
    @trait_type = TraitType.find_by_id(params[:id])
  end

  def new
    @trait_type = TraitType.new
  end

  def create
    @trait_type = TraitType.new
    @trait_type.name = params[:name]
    @trait_type.image_url = params[:image_url]
    @trait_type.description = params[:description]

    if @trait_type.save
            redirect_to trait_types_url
          else
      render 'new'
    end
  end

  def edit
    @trait_type = TraitType.find_by_id(params[:id])
  end

  def update
    @trait_type = TraitType.find_by_id(params[:id])
    @trait_type.name = params[:name]
    @trait_type.image_url = params[:image_url]
    @trait_type.description = params[:description]

    if @trait_type.save
            redirect_to trait_types_url
          else
      render 'edit'
    end
  end

  def destroy
    @trait_type = TraitType.find_by_id(params[:id])
    @trait_type.destroy
        redirect_to trait_types_url
      end
end
