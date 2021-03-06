class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @posts = user.posts
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(post.user.id)
    else
      render :edit
    end
  end

  def user_params
    params.require(:user).permit(:nickname, :email, :age, :occupation, :self_introduction)
  end
end
