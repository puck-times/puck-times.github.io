class ArticlesController < ApplicationController
	#authentication on all methods except index & show
	http_basic_authenticate_with name: "pucktimes", password: "bbab4sjs", except: [:index, :show]

	#index, show, new, edit, create, update, destroy
	def index
	    @articles = Article.all
	end

  def show
    	@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def edit
 	 @article = Article.find(params[:id])
	end

	def create
    #the first line below simply returns the URL parameters as a basic text hash
    # render plain: params[:article].inspect
    @article = Article.new(article_params)
		if @article.save
    	redirect_to @article
	  	else
	    render 'new'
  		end
	end

	def update
  	@article = Article.find(params[:id])
	  if @article.update(article_params)
    	redirect_to @article
	  else
    	render 'edit'
	  end
	end

	def destroy
	  @article = Article.find(params[:id])
	  @article.destroy
	  redirect_to articles_path
	end

private
  def article_params
    params.require(:article).permit(:title, :intro, :need_to_know, :recap, :hot_and_cold, :opp_lineup, :sharks_lineup, :further_reading, :memorable_moments, :share)
  end
end
