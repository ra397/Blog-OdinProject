class ArticlesController < ApplicationController
  def index
    # fetch all articles
    @articles = Article.all
  end
end
