class Api::V1::ArticlesController < ApplicationController
  def index
    @articles = Article.all
    render json: @articles
  end

  def update
    @article = Article.find(params[:id])

    @article.update(article_params)
    if @article.save
      render json: @article
    else
      render json: {errors: @article.errors.full_messages}, status: 422
    end
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      render json: @article
    else
      render json: {errors: @article.errors.full_messages}, status: 422
    end
  end

  private
  def article_params
    params.permit(:title, :description, :url, :image, :fake, :real, :source, :published)
  end
end
