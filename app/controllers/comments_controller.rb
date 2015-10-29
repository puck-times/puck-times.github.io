class CommentsController < ApplicationController
	#authentication for destroying comments
	 http_basic_authenticate_with name: "pucktimes", password: "bbab4sjs", only: :destroy

	def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    if @comment.errors.any?
        render 'articles/show'
        # render 'error'
      else
        redirect_to article_path(@article)
    end
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:username, :comment_body)
    end
end
