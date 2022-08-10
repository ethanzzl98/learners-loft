class Api::V1::BookingsController < Api::V1::BaseController
  before_action :set_booking, only: [ :show, :update, :destroy ]

  def index
    @bookings = Booking.where(user_id: @current_user.id).order(:created_at => :desc)
    # @bookings_detail = @bookings.map { |booking| { lesson: booking.lesson, user: booking.user } }
    # render json: @bookings_detail
  end

  def show
  end

  def create
    # debugger
    @booking = Booking.new
    @booking.user = @current_user
    @booking.lesson = Lesson.find(params[:lesson_id])
    puts @booking.errors.full_messages
    if @booking.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @booking.update(booking_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    @booking.destroy
    head :no_content
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:lesson_id, :user_id, :status)
  end

  def render_error
    render json: { errors: @booking.errors.full_messages }, status: :unprocessable_entity
  end
end
