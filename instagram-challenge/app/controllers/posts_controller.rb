class PostsController < ApplicationController


def new 
  @post = Post.new 
end 


def create

  @post = Post.create(post_params) 
  p @post
  redirect_to posts_path
  # redirect to index to display a list of all posts 
end 


def index 
  p @posts = Post.all
end 

private 
def post_params
  params.require(:post).permit(:image)
end 

end 