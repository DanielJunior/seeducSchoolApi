class ApplicationController < ActionController::API
  include ActionController::Serialization

  def index
    render json: School.all
  end
end
