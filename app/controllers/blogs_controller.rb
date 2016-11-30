# BlogsControllerController
class BlogsController < ApplicationController

  def index
    @blogs = Post.published.order_by_created_at
  end

  def search

  end

end
