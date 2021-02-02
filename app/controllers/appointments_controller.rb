class AppointmentsController < ApplicationController
    before_action :authenticate_user!
    def index
        appointments = current_user
        render json: appointments
    end
end
