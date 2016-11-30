# CategoriesController
class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def fetch_posts
    category = Category.find(params[:id])
    @posts = category.posts
end
