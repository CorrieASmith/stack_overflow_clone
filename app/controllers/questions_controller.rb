class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
    render :show
  end

  def new
    @question = Question.new
    render :new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Thank you for submitting your question!"
      redirect_to "/"
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
    render :edit
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to "/"
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to "/"
  end

  private
  def question_params
    params.require(:question).permit(:question)
  end
 end
