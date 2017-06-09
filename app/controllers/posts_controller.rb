class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @category = Category.all
  end

  def create
    @post = Post.create(post_params)
#    @post = Post.new(params[:post])
    if @post.save
      redirect_to posts_path, :notice => "Your post has been saved"
    else
      render 'new'
    end
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
      params.require(:post).permit(:title, :body, :category_id, :author_id)
    end
end
