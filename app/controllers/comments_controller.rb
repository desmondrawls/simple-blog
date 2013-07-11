class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

 # POST users/1/posts/1/comments
# POST users/1/posts.json
  def create
    @user = User.find(params[:user_id]) #not necessary
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to([@post.user, @post], :notice => 'Comment was successfully created.') }
        format.json { render :json => @post, :status => :created, :location => [@post.user, @post] }
      else
        format.html { render :action => "new" }
        format.json { render :json => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
  end
end
