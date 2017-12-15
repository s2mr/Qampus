class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def mypage
    if user_signed_in?
      user = current_user
    end

    @posts = Post.where(user_id: user.id)
    # @favs = Post.
  end

end
