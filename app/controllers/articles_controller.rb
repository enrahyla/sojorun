class ArticlesController < ApplicationController

	before_filter :require_login, only: [:create, :destroy, :edit, :update]

	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(params[:article])
		@article.save
		redirect_to article_path(@article)
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		flash.notice = "Article '#{@article.title}' Destroyed"
		redirect_to articles_path(@articles)
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
  		@article.update_attributes(params[:article])
  		flash.notice = "Article '#{@article.title}' Updated!"
		redirect_to article_path(@article)
end
end

private

def zero_authors_or_authenticated
    unless Author.count == 0 || current_user
      redirect_to root_path
    return false
  end
end
