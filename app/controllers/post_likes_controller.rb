class PostLikesController < ApplicationController
  before_action :set_post_variables, only: [:like_post, :unlike_post]

  def like_post
    like = current_user.likes.new(post_id: @post.id)
    like.save
  end

  def unlike_post
    like = current_user.likes.find_by(post_id: @post.id)
    like.destroy
  end

  private

  def set_post_variables
    @post = Post.find(params[:post_id])
    @id_post_name = "#like-post-link-#{@post.id}"
    @id_post_heart = "#post-heart-#{@post.id}"
    if current_user.id != @post.user_id
    Message.create(user_id: @post.user_id, body: "#{current_user.name}さんがあなたの質問にいいねしました")
    end
  end

end
