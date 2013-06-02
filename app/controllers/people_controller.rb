class PeopleController < ApplicationController

  def index
    redirect_to new_person_url
  end

  def show
    @person = Person.find_by_id(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(params[:person])

    if @person.save
            redirect_to people_url, :notice => "Thank you"
          else
      render 'new'
    end
  end

  def edit
    @person = Person.find_by_id(params[:id])
  end

  def update
    @person = Person.find_by_id(params[:id])
    @person.dob = params[:dob]
    @person.dod = params[:dod]
    @person.eulogy = params[:eulogy]
    @person.photo_url = params[:photo_url]
    @person.charity = params[:charity]

    if @person.save
            redirect_to people_url
          else
      render 'edit'
    end
  end

  def destroy
    @person = Person.find_by_id(params[:id])
    @person.destroy
        redirect_to people_url
      end
end
