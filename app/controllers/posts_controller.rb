class PostsController < ApplicationController
    #   load 'comments_controller.rb'
      def index
  
        @posts = Post.paginate(:page => params[:page], :per_page => 5)
        @results = Post.order("created_at desc").limit(5)
      end

      def show
        @post=Post.find(params[:id])
      end

      def new
        @post=Post.new
      
      end

     

      def create
        @post=Post.new(post_params)
        if @post.save
          redirect_to posts_path
        else
          render :action=>:new
        end

      end

      def edit
        @post=Post.find(params[:id])
      end

      def update
        @post=Post.find(params[:id])
        if @post.update(post_params)
          redirect_to post_path(@post)
        else
          render :action=>:edit
        end
      end

      def destroy
        @post=Post.find(params[:id])
        @post.destroy
        redirect_to posts_path
      end

      private
  def post_params
    params.require(:post).permit(:title,:body)
  end
end
