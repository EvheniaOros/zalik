class UserparamsController < ApplicationController
	before_action :authenticate_user!
  def show
  end
  def new
  	@userparam = Userparam.new
  end
  def create
  end
  def edit
  end
  def update
  end
  def destroy
  end
end
