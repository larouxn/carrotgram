# frozen_string_literal: true

class IdeasController < ApplicationController
  before_action :set_idea, only: [:show, :edit, :update, :destroy]

  # GET /ideas
  # GET /ideas.json
  def index
    @ideas = Idea.all
  end

  # GET /ideas/1
  # GET /ideas/1.json
  def show
    @comments = @idea.comments.all
    @comment = @idea.comments.build
  end

  # GET /ideas/new
  def new
    @idea = Idea.new
  end

  # GET /ideas/1/edit
  def edit
  end

  # POST /ideas
  # POST /ideas.json
  def create
    @idea = Idea.new(idea_params)

    respond_to do |format|
      if @idea.save
        format.html { redirect_to(@idea, notice: I18n.t("controllers.ideas.created")) }
        format.json { render(:show, status: :created, location: @idea) }
      else
        format.html { render(:new) }
        format.json { render(json: @idea.errors, status: :unprocessable_entity) }
      end
    end
  end

  # PATCH/PUT /ideas/1
  # PATCH/PUT /ideas/1.json
  def update
    respond_to do |format|
      if @idea.update(idea_params)
        format.html { redirect_to(@idea, notice: I18n.t("controllers.ideas.updated")) }
        format.json { render(:show, status: :ok, location: @idea) }
      else
        format.html { render(:edit) }
        format.json { render(json: @idea.errors, status: :unprocessable_entity) }
      end
    end
  end

  # DELETE /ideas/1
  # DELETE /ideas/1.json
  def destroy
    @idea.destroy
    respond_to do |format|
      format.html { redirect_to(ideas_url, notice: I18n.t("controllers.ideas.deleted")) }
      format.json { head(:no_content) }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_idea
    @idea = Idea.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the allowlist through.
  def idea_params
    params.require(:idea).permit(:name, :description, :picture)
  end
end
