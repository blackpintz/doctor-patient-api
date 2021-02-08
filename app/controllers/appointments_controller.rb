class AppointmentsController < ApplicationController
  before_action :authenticate_user!
  def index
    appointments = current_user.appointments
    render json: appointments
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      render json: @appointment
    else
      render error: { error: 'Unable to create a user.' }, status: 400
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:city, :user_id, :physician_id, :date)
  end
end
