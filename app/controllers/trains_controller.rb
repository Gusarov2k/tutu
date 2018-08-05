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

		if @train.save
			redirect_to @train
		else
			render :new
		end
	end

	def edit
		@train = Train.find(params[:id])
	end

	def update
		
	end


	private

	def train_params
		params.require(:train).permit(:number)
		
	end
end