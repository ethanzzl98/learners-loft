class Api::V1::LessonsController < Api::V1::BaseController
  before_action :set_lesson, only: [ :show, :update, :destroy ]

  def index
    @lessons = Lesson.all
    render json: @lessons #Just for testing
  end

  def show
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @lesson.update(lesson_params)
      render :show
    else
      render_error
    end
  end

  def destroy
      @lesson.destroy
      head :no_content
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:subject, :title, :description, :start_time, :end_time, :user_id)
  end

  def render_error
    render json: { errors: @lesson.errors.full_messages },
      status: :unprocessable_entity
  end

end
