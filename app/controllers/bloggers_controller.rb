class BloggersController < ApplicationController
  
    def new
        @blogger = Blogger.new
    end

    def create
        @blogger = Blogger.create(blogger_params)
        @blogger.save
        redirect_to bloggers_path(@blogger)
    end

    def index
        @bloggers = Blogger.all
    end

    def show
        @like_counter = 0
        @blogger = Blogger.find(params[:id])
        @blogger.posts.each do |post|
            @like_counter += post.likes
            puts post.likes
            byebug  
        end
    end

    private

    def blogger_params
        params.require(:blogger).permit(:name,:bio,:age)
    end

end