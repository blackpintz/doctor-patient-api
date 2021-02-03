class PhysiciansController < ApplicationController
    before_action :authenticate_user!
    def index
        physicians = Physician.all
        render json: physicians
    end
end
