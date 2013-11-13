class PostsController < ApplicationController
  def show
    @pic = Picture.find(params[:id])
  end

  def index
    @pic = Picture.all
  end

  def new
  end

  def create
    @i = Picture.new
    @i.caption = params[:caption]
    @i.source = params[:source]
    @i.save
    redirect_to(posts_url)
  end

  def destroy
    i = Picture.find(params[:id])
    i.destroy
    redirect_to(posts_url, :notice =>"Picture has been deleted.")
  end

  def edit
    @pic = Picture.find(params[:id])
  end

  def update
    @i = Picture.find(params[:id])
    @i.caption = params[:caption]
    @i.source = params[:source]
    @i.save
    redirect_to(post_url(@i.id))
  end

end
