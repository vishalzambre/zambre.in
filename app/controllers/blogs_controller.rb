# BlogsControllerController
class BlogsController < ApplicationController

  def index
    @posts = Post.all
    @categories = Category.all
  end

  def search

  end

end
