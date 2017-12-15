class CommentLikesController < ApplicationController
  before_action :set_comment_variables, only: [:like_comment, :unlike_comment]

  def like_comment
    like = current_user.likes.new(comment_id: @comment.id)
    like.save
  end

  def unlike_comment
    like = current_user.likes.find_by(comment_id: @comment.id)
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

end
