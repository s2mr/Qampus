class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def mypage
    @posts = Post.where(user_id: current_user.id)
    if Like.present?
      @user_like = Like.where(user_id: current_user.id)
      @post_like = Like.where(post_id: @user_like.post_id)
      @liked_posts = @user_like.post
    end
  end

end
