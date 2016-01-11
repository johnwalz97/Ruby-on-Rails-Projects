class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit]

  # GET /comments
  def index
    @comments = Comment.all
  end

  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      puts params
      if @comment.save
        format.html { redirect_to "/products/#{params[:comment][:product_id]}", notice: 'Comment was successfully created.' }
      else
        format.html { redirect_to "/products/#{params[:comment][:product_id]}" , notice: 'There are errors with your comment!!!'}
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:comment, :product_id)
    end
end
