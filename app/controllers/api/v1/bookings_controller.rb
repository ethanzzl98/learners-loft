class Api::V1::BookingsController < Api::V1::BaseController
  before_action :set_booking, only [ :show, :update, :destroy]

  def show
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

  def booking_params
    params.require(:booking).permit(:class_id, :user_id, :status)
  end
end
