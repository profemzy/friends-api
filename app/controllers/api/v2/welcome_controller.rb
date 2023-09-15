class Api::V2::WelcomeController < ApplicationController
  def index
    render json: {status: "SUCCESS", message: "You are on API Version 2"}, status: :ok
  end
end