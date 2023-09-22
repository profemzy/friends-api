class Api::V2::WelcomeController < ApplicationController
  def index
    render json: {status: "SUCCESS", message: "YOU ARE RUNNING API Version 2"}, status: :ok
  end

  def health_check
    render json: {status: "SUCCESS", message: "Version 2 Services are running"}, status: :ok
  end
end