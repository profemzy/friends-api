class Api::V1::WelcomeController < ApplicationController
  def index
    render json: {status: "SUCCESS", message: "You are on API Version 1"}, status: :ok
  end
end