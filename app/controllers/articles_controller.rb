class ArticlesController < ApplicationController

  def index
    @articles = Articles.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(articles_params)
    redirect_to articles_path(@article)
  end

  def edit
    @article = Article.find(params[:id])
  end



  def update
  end

  def delete
  end

private

  def article_params
    params.require(:article).permit(:title, :content)
  end

end
