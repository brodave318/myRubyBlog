class PostsController < ApplicationController
  def index
    @posts = Post.all
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
    @post = Post.find(params[:id])
  end

  def destroy

  end
  private
    def post_params
      require_params(:post).permit(:title, :body, :category_id, :author_id)
    end
end
