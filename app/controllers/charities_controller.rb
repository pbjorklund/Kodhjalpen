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
end
