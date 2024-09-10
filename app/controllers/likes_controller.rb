class LikesController < ApplicationController
    before_action :find_comment
  
    def create
      @comment.likes.create(user: current_user)
      redirect_to message_path(@comment.message), notice: 'Liked successfully'
    rescue => e
      Rails.logger.error("Error creating like: #{e.message}")
      redirect_to message_path(@comment.message), alert: 'Unable to like comment'
    end
  
    def destroy
      @comment.likes.where(user: current_user).destroy_all
      redirect_to message_path(@comment.message), notice: 'Unliked successfully'
    rescue => e
      Rails.logger.error("Error deleting like: #{e.message}")
      redirect_to message_path(@comment.message), alert: 'Unable to unlike comment'
    end
  
    private
  
    def find_comment
      @comment = Comment.find(params[:comment_id])
    end
  end
  