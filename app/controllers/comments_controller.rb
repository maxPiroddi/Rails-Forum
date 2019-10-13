class CommentsController < ApplicationController

    def create
        # First we find the message using message ID
        @message = Message.find(params[:message_id])
        # Then we create a comment with respect to said message
        @comment = @message.comments.create(comment_params)
    end

    private

        def comment_params
            params.require(:comment).permit(:content)
        end

end
