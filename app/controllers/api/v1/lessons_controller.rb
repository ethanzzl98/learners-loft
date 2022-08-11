class Api::V1::LessonsController < Api::V1::BaseController
  before_action :set_lesson, only: [ :show, :update, :destroy ]

  def index
    @lessons = Lesson.all
    # render json: @lessons
  end

  def mylessons
    @lessons = Lesson.where(user_id: @current_user.id)
    render json: @lessons
  end

  def show
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      puts "Save success"
      render :show, status: :created
    else
      puts "Something went wrong\n"
      puts @lesson.errors.full_messages
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
    params.require(:lesson).permit(:subject, :title, :description, :start_date, :start_time, :end_time, :user_id, :icon_url)
  end

  def render_error
    render json: { errors: @lesson.errors.full_messages },
      status: :unprocessable_entity
  end

end
