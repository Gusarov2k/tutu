class TrainsController < ApplicationController
	def index
		@trains = Train.all
	end

	def show
		@train = Train.find(params[:id])
	end

	def new
		@train = Train.new
	end

	def create
		@train = Train.new(train_params)
	end


	private

	def train_params
		params.require(:train).permit(:number)
		
	end
end