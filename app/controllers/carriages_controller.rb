class CarriagesController < ApplicationController
	# before action dd
	before_action :set_carriage, only: [:show, :edit, :update, :destroy]

	def index
		@carriages = Carriage.all
	end

	def show
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end
	
	def destroy
	end

	private

	def set_carriage
		@carriage = Carriage.find(params[:id])
	end

	def carriage_params
		params.require(:carriage).permit(:type_carriage, :quant_up_seat, :quant_down_seat)
	end
end