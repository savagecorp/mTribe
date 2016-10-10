class PostsController < ApplicationController
  def index
  	@posts = Post.all

  	respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @posts}
      format.json { render json: @posts}
    end

  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update_attributes(post_params)
    redirect_to posts_path
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to posts_path
  end



  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path
  end


  private
      def post_params
          params.require(:post).permit(:description, :url, :why, :tags)
      end

end
