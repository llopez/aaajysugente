# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @articles = Article.all
    @categories = Category.with_articles
  end

  def show
    category = Category.find(params[:id])
    @categories = Category.with_articles
    @articles = category.articles

    render 'pages/index'
  end
end