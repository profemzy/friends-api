class Api::V1::WelcomeController < ApplicationController
  def index
    render json: {status: "SUCCESS", message: "YOU ARE RUNNING API Version 1"}, status: :ok
  end
end