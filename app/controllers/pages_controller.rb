# frozen_string_literal: true

class PagesController < ApplicationController
  def index
    @articles = Article.all
  end
end
