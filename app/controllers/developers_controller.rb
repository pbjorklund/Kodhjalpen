# encoding: utf-8
class DevelopersController < ApplicationController
  def new
    @developer = Developer.new
    @developer.build_user_auth
  end

  def create
    @developer = Developer.new params[:developer]
    if @developer.save
      sign_in @developer.user_auth
      redirect_to root_path, notice: "Du har registrerats"
    else
      render :new
    end
  end

  def edit
    #OPTIMIZE Refactor to obilivion
    if current_user
      if current_user_auth.authable.class == Developer
        if current_user_auth.authable.id.to_s == params[:id]
          @developer = Developer.find params[:id]
        else
          flash[:error] = "Logga in för att uppdatera din profil"
          redirect_to root_url 
        end

      end
    else
      redirect_to root_url, notice: "Logga in för att uppdatera din profil"
    end
  end
end
