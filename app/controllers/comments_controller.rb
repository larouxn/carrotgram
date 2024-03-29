# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to(@comment, notice: I18n.t("controllers.comments.created.")) }
        format.json { render(:show, status: :created, location: @comment) }
      else
        format.html { render(:new) }
        format.json { render(json: @comment.errors, status: :unprocessable_entity) }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to(@comment, notice: I18n.t("controllers.comments.updated.")) }
        format.json { render(:show, status: :ok, location: @comment) }
      else
        format.html { render(:edit) }
        format.json { render(json: @comment.errors, status: :unprocessable_entity) }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    idea_id = @comment.idea_id
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to(idea_path(idea_id), notice: I18n.t("controllers.comments.deleted.")) }
      format.json { head(:no_content) }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = Comment.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the allowlist through.
  def comment_params
    params.require(:comment).permit(:user_name, :body, :idea_id)
  end
end
