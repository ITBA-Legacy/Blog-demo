class CommentsController < ApplicationController
  def index
    @comments = Comment.find_all_by_post_id(params[:post_id])
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.post_id = params[:post_id]
    
    if @comment.save
      redirect_to post_comment_path(@comment.post_id, @comment.id), :notice => "Successfully created comment."
    else
      render :action => 'new'
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(params[:comment])
      redirect_to post_comment_path(@comment.post_id, @comment.id), :notice  => "Successfully updated comment."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_comments_url, :notice => "Successfully destroyed comment."
  end
end
