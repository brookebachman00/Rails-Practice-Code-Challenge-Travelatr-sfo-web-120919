class PostsController < ApplicationController

    def new
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        if @post.save
            redirect_to posts_path(@post)
        else
             render :new
        end
        
    end

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if @post.update
            redirect_to post_path(@post)
        else
            render :edit
        end
    end

    private

    def post_params
        params.require(:post).permit(title, :content, :likes, :blogger_id, :destination_id)
    end


end