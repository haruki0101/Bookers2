class UsersController < ApplicationController
	  before_action :authenticate_user!
  def show
  	@book = Book.new
    @user = User.find(params[:id])
    @books = @user.books.page(params[:page]).reverse_order
  end
  def index
  	@users = User.all
  	@book = Book.new
  end

  def edit
   	@user = User.find(params[:id])
   	flash[:notice] = "successfully"
   	redirect_to user_path(current_user) unless @user.id == current_user.id
   end
	def update
	    @user = User.find(params[:id])
	    if @user.update(user_params)
	    flash[:notice] = "successfully"
	    redirect_to user_path(@user.id)
		else
		flash[:notice] = "error"
		render "edit"
		end
	end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
