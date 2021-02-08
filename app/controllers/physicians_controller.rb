class PhysiciansController < ApplicationController
  def index
    physicians = Physician.all
    render json: physicians
  end
end
