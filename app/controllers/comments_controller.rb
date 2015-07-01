class CommentsController < ApplicationController
    
    def new
    end
    
    def create
        Comment.create(comment_params)
        redirect_to new_comment_path
        flash[:success] = "Thanks!"
    end
    
    def view
        val = params[:password]
        if val == "ryan" || val == "shannon" || val == "batjin"
            @comments = Comment.all
        else
            redirect_to root_path
            flash[:danger] = "Invalid password"
        end
    end
    
    def home
    end
    
    private
    def comment_params
        params.require(:comment).permit(:note)
    end
end
