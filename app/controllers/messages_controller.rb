class MessagesController < ApplicationController
  def delete_message
    @post = Post.find(params[:id])
    message = Message.find_by(post_id: @post.id)
    message.destroy
    redirect_to post_path(id: @post.id)
  end
end
