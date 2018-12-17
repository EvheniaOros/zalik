class CommentsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_write
   def new
    @comment = Comment.new
  end
  
  def create
    params[:comment][:user_id] = current_user.id
    params[:comment][:write_id] = @write.id
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to write_path(@write.id)
    else
      render 'new'
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
  
private
  def set_write
    @write = Write.find_by(id: params[:write_id])
  end
  
  def comment_params
    params.require(:comment).permit(:user_id, :write_id, :body)
  end
end
