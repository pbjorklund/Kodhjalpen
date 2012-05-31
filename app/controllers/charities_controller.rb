# encoding: utf-8
class CharitiesController < ApplicationController
  def new
    @charity = Charity.new
    @charity.build_user_auth
  end

  def create
    @charity = Charity.new params[:charity]
    if @charity.save
      sign_in @charity.user_auth
      redirect_to root_path, notice: "Du har registrerats"
    else
      render :new
    end
  end

  def edit
    #OPTIMIZE Refactor to obilivion
    if current_user
      if current_user_auth.authable.class == Charity
        if current_user_auth.authable.id.to_s == params[:id]
          @charity = Charity.find params[:id]
        else
          flash[:error] = "Logga in för att uppdatera din profil"
          redirect_to root_url 
        end
      else
        flash[:error] = "Försökte redigera en ogiltig profil"
        redirect_to root_url 
      end
    else
      redirect_to root_url, notice: "Logga in för att uppdatera din profil"
    end
  end
end
