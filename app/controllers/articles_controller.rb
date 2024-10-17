class ArticlesController < ApplicationController
  # GET /
  # GET /articles
  def index
    # fetch all articles
    @articles = Article.all
  end

  # GET /articles/:id
  def show
    article_id = params[:id]
    @article = Article.find(article_id)
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # POST /articles
  def create
    # create a new article instance
    @article = Article.new(article_params)
    
    if @article.save # if the new article saves to db
      redirect_to @article # show the article at /articles/:id 
    else 
      # show the 'new' page with an unprocessable_entity error
      render :new, status: :unprocessable_entity
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end

end
