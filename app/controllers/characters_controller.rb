class CharactersController < ApplicationController
  def index
    @character = Character.new
    @user = User.find(params[:user_id])
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      redirect_to root_path
    else
      render :index
    end
  end

  def new
  end

  private

  def character_params
    params.require(:character).permit(:height,:weight,:sex_id).merge(user_id: current_user.id)
  end

end
