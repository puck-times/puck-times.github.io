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

# #I DONT THINK THIS CODE IS WORKING -- SHOULD BE ABLE TO REMOVE
# def upload
#   uploaded_io = params[:article][:picture]
#   File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
#     file.write(uploaded_io.read)
#   end
# end

private
  # Anytime new fields are added to the model, they must be included here in order to be passed through the URL as params
  def article_params
    params.require(:article).permit(:title, :game_date, :intro, :need_to_know, :recap, :hot_and_cold, :opp_lineup, :sharks_lineup, :memorable_moments, :link1_text, :link1_url, :link2_text, :link2_url, :link3_text, :link3_url,:share, :photo, :photo2, :photo3, :opp_gk, :opp_d1, :opp_d2, :opp_d3, :opp_d4, :opp_d5, :opp_d6, :opp_f1, :opp_f2, :opp_f3, :opp_f4, :opp_f5, :opp_f6, :opp_f7, :opp_f8, :opp_f9, :opp_f10, :opp_f11, :opp_f12, :sharks_gk, :sharks_d1, :sharks_d2, :sharks_d3, :sharks_d4, :sharks_d5, :sharks_d6, :sharks_f1, :sharks_f2, :sharks_f3, :sharks_f4, :sharks_f5, :sharks_f6, :sharks_f7, :sharks_f8, :sharks_f9, :sharks_f10, :sharks_f11, :sharks_f12,)
  end
end
