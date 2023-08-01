class PostsController < ApplicationController
  def index
    posts = Post.order(id: :desc).limit 10
    render json: { posts: posts.map { |post| { id: post.id, content: post.content, created_at: post.created_at } } }
  end

  def create
    post = Post.new({ content: params[:content] })

    if post.save
      render json: { id: post.id, content: post.content, created_at: post.created_at }
    else
      render json: { error: 'Content is missing' }, status: 422
    end
  end
end
