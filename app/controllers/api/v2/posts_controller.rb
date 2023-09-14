class Api::V2::PostsController < ApplicationController
  def index
    posts = Post.all

    if posts
      render json: {status: "SUCCESS", message: "Fetched all the posts successfully", data: posts}, status: :ok
    else
      render json: posts.errors, status: :bad_request
    end
  end

  def create
    post = Post.new(post_params)

    if post.save
      render json: {status: "SUCCESS", message: "Post was created successfully!", data: post}, status: :created
    else
      render json: post.errors, status: :unprocessable_entity
    end
  end

  # Show a specific post GET request
  def show
    post = Post.find(params[:id])

    if post
      render json: {data: post}, state: :ok
    else
      render json: {message: "Post could not be found"}, status: :bad_request
    end
  end

  # Delete a specific post DELETE request
  def destroy
    post = Post.find(params[:id])

    if post.destroy!
      render json: {message: "Post was deleted successfully"}, status: :ok
    else
      render json: {message: "Post does not exist"}, status: :bad_request
    end
  end

  # Update details for a specific post. PATCH request
  def update
    post = Post.find(params[:id])

    if post.update!(post_params)
      render json: {message: "Post was updated successfully", data: post}, status: :ok
    else
      render json: {message: "Post cannot be updated"}, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :message)
  end
end