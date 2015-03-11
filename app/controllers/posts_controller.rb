class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :remove]

	def index
		@posts = Post.all
	end

	def show
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)

		if @post.save
			redirect_to @post
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		
	end

	def remove
		
	end

	private
		def find_post
			@post = Post.find(params[:id])
		end

		def post_params
			params.require(:post).permit(:title, :link, :description)
		end
end