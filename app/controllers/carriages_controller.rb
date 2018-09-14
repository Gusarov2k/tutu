class CarriagesController < ApplicationController
	# before action dd
	before_action :set_carriage, only: [:show, :edit, :update, :destroy]

	def index
		@carriages = Carriage.all
	end

	def show
	end

	def new
		@carriage = Carriage.new
		# dor create new form in form_for neded add this code
		# http://railscasts.com/episodes/196-nested-model-form-part-1?autoplay=true
		1.times { train = @carriage.trains.build }

	end

	def create
		@carriage = Carriage.new(carriage_params)
		
		if @carriage.save
			redirect_to @carriage
		else
			render :new
		end
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
		params.require(:carriage).permit(:type_carriage, :quant_up_seat, :quant_down_seat, trains_attributes: [:number, :carriage_id])
	end
end