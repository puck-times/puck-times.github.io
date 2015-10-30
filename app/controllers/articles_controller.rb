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

#I DONT THINK THIS CODE IS WORKING -- NEED TO DEBUG
def upload
  uploaded_io = params[:article][:picture]
  File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
    file.write(uploaded_io.read)
  end
end

private
  def article_params
    params.require(:article).permit(:title, :intro, :need_to_know, :recap, :hot_and_cold, :opp_lineup, :sharks_lineup, :memorable_moments, :link1_text, :link1_url, :link2_text, :link2_url, :link3_text, :link3_url,:share, :photo, :photo2, :photo3)
  end
end
