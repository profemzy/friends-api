class Api::V1::WelcomeController < ApplicationController
  def index
    render json: {status: "SUCCESS", message: "YOU ARE RUNNING API Version 1"}, status: :ok
  end

  def health_check
    render json: {status: "SUCCESS", message: "Version 1 Services are running"}, status: :ok
  end
end