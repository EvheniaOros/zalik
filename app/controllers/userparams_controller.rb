class UserparamsController < ApplicationController
	before_action :authenticate_user!
  before_action :find_user, only: [ :show, :edit, :update, :destroy]
  def show

  end
  def new
  	@userparam = Userparam.new
  end
  def create
    @userparam = current_user.build_userparam(profile_params)
      if @userparam.save
      redirect_to userparam_path(@userparam.id)
      else
      render 'new'
  end
end
  def edit
     @userparam = current_user.userparam
  end
  def update
    @userparam = Userparam.find_by(user_id: current_user.id)
     if @userparam.update(profile_params)
      redirect_to userparam_path(@userparam.id)
     
     else
      render 'edit'
    end
  end
  def destroy
  end
  private
  def profile_params
    params.require(:userparam).permit(:user_id, :firstname, :lastname, :age, :avatar)
  end
  def find_user
    @userparam = Userparam.find_by(id: params[:id])
  end
end
