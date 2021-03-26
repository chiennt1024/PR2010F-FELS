class Admin::QuestionsController < Admin::AdminController
  before_action :set_question, only: %i[ show edit update destroy ]

  def index
    @pagy, @questions = pagy(Question.all, items: 10)
  end

  def new
    @question = Question.new
    @question.answers.build
    @question.answers.build
    @question.answers.build
    @question.answers.build
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to admin_questions_path
      flash[:success] = "Question was successfully created."
    else
      redirect_to admin_questions_path
      flash[:danger] = 'Error' 
    end
  end

  def show
    
  end

  def edit

  end

  def update
    @question.update(question_params)
    flash[:success] = "Question updated"
    redirect_to admin_questions_path
  end

  def destroy
    @question.destroy
    flash[:success] = 'Question deleted'
    redirect_to admin_questions_path
  end

  private
    def set_question
      @question = Question.find(params[:id])
    end

    def question_params
      params.require(:question).permit(:question_name, :course_id, answers_attributes: [:id, :answer_content, :is_correct]);
    end
end
