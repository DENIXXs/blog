class CommentController < ApplicationController

	def create
		@article = Artilce.find(params[:article_id])
		@article.comments.create(comment_params)

		redirect_to article_path(@article)
	end

		private

	def comment_params
		params.require(:comments).permit(:author, :body)
	end

end