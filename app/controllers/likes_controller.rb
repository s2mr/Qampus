class LikesController < ApplicationController
  before_action :set_comment_variables, only: [:like_comment, :unlike_comment]
  before_action :set_post_variables, only: [:like_post, :unlike_post]

  def like_comment
    like = current_user.likes.new(comment_id: @comment.id, post_id: 0)
    like.save
  end

  def unlike_comment
    like = current_user.likes.find_by(comment_id: @comment.id, post_id: 0)
    like.destroy
  end

  def like_post
    like = current_user.likes.new(post_id: @post.id, comment_id: 0)
    like.save
  end

  def unlike_post
    like = current_user.likes.find_by(post_id: @post.id, comment_id: 0)
    like.destroy
  end

  private

  def set_comment_variables
    @comment = Comment.find(params[:comment_id])
    @id_comment_name = "#like-comment-link-#{@comment.id}"
    @id_comment_heart = "#comment-heart-#{@comment.id}"
    if current_user.id != @comment.user_id
    Message.create(user_id: @comment.user_id, body: "#{current_user.name}さんがあなたの回答にいいねしました")
    end
  end

  def set_post_variables
    @post = Post.find(params[:post_id])
    @id_post_name = "#like-post-link-#{@post.id}"
    @id_post_heart = "#post-heart-#{@post.id}"
    if current_user.id != @post.user_id
    Message.create(user_id: @post.user_id, body: "#{current_user.name}さんがあなたの質問にいいねしました")
    end
  end

end
