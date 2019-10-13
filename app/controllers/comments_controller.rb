class CommentsController < ApplicationController
    before_action :find_message
    before_action :find_comment, only: [:edit, :update, :destroy]
    # Redirect non-logged to sign in page if attempting to create comment
    before_action :authenticate_user!, except: [:index, :show]


    def create
        # Then we create a comment with respect to said message
        @comment = @message.comments.create(comment_params)
        # Finally we stick the current user ID to the comment
        @comment.user_id = current_user.id 

        if @comment.save
            redirect_to message_path(@message)
        else
            render "new"
        end
    end

    def edit
    end

    def update
        if @comment.update(comment_params)
            redirect_to message_path(@message)
        else
            render "edit"
        end
    end

    def destroy
        @comment.destroy
        redirect_to message_path(@message)
    end

    private
    # Keeping code DRY
        def comment_params
            params.require(:comment).permit(:content)
        end

        def find_message
            @message = Message.find(params[:message_id])
        end

        def find_comment
            @comment = @message.comments.find(params[:id])
        end

end
