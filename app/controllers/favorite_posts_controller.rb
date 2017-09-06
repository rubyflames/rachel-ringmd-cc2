class FavoritePostsController < ApplicationController
  before_action :set_post

  def index
  @favorites = current_user.favorite_posts
  end

  def create
    if Favorite.create(favorited: @post, user: current_user)
      redirect_to @post, notice: 'Post has been favorited'
    else
      redirect_to @post, alert: 'Uh-oh... Something went wrong!'
    end
  end

  def destroy
    Favorite.where(favorited_id: @post.id, user_id: current_user.id).first.destroy
    redirect_to @post, notice: 'Post is no longer in your favorites'
  end

  private

  def set_post
    @post = Post.find(params[:post_id] || params[:id])
  end
end
