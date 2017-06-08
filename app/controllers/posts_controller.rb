class PostsController < ApplicationController
  def index
    @content_first = 'This is some sample text for our awesome new Ruby blog.'
    @content_second = 'This is more sample text for our awesome new Ruby blog.'
  end

  def new

  end

  def create
    Post.create(post_params)
  end

  def edit

  end

  def uodate

  end

  def show

  end

  def destroy

  end
  private
    def post_params
      require_params(:post).permit(:title, :body, :category_id, :author_id)
    end
end
