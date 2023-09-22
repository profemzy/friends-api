class Api::V2::WelcomeController < ApplicationController
  def index
    render json: {status: "SUCCESS", message: "YOU ARE RUNNING API Version 2"}, status: :ok
  end
end