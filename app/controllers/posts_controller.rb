class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end
  def new
  	@post = Post.new
  end
  def show
    @post = Post.find(3)
  	render show: "helllo"
  end
  def create
  	@post = Post.new(post_params)
  	if @post.save
  		redirect_to root_path
  	else
  		render :new
  	end
  end
  def post_params
	params.require(:post).permit(:name, :text, :room)
  end
end