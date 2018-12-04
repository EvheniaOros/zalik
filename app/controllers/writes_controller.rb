class WritesController < ApplicationController
before_action :authenticate_user!
before_action :find_post, only: [:show, :edit, :update, :destroy]
   def index
   end
   def new
    @write = Write.new
	end
	def create
		@write = current_user.writes.build(write_params)
  	if @write.save
  		redirect_to root_path
  	end
	end
    def show
	end
	def edit
	end
	def update
	end
	def destroy
	end
	def find_post
		@write = Write.find_by(id: params[:id])
	end
	private
	def post_params
		params.require(:write).permit(:title, :firstheroy, :secondheroy, :aboutstory, :body)	
	end
end
