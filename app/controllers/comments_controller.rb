class CommentsController < ApplicationController

 

      def new
        @comment = Comment.new
      end

      def show

        @comment=Comment.find(params[:id])
      end
   
      def create
      @comment = comment.new(comment_params)
      @comment.save
      end
   

      private def Comment_params
      params.require(:Comment).permit(:comment_description)
      end
end

