class TraitsController < ApplicationController

  def index
    @traits = Trait.all
  end

  def show
    @trait = Trait.find_by_id(params[:id])
  end

  def new
    @trait = Trait.new
  end

  def create
    @trait = Trait.new
    @trait.person_id = params[:person_id]
    @trait.trait_type_id = params[:trait_type_id]
    
    if @trait.save
            redirect_to traits_url
          else
      render 'new'
    end
  end

  def edit
    @trait = Trait.find_by_id(params[:id])
  end

  def update
    @trait = Trait.find_by_id(params[:id])
    @trait.person_id = params[:person_id]
    @trait.trait_type_id = params[:trait_type_id]
    
    if @trait.save
            redirect_to traits_url
          else
      render 'edit'
    end
  end

  def destroy
    @trait = Trait.find_by_id(params[:id])
    @trait.destroy
        redirect_to traits_url
      end
end
