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
end
