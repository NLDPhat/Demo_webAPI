class Api::V1::BooksController < ApplicationController
	before_action :authorize_user
	def index
		render json: Book.all, status: :ok 
	end
end
