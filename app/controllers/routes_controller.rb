class RoutesController < ApplicationController
	before_action :set_route, only: [:show, :edit, :update, :destroy]

	def index
		@routes = Route.all	
	end

	def new
		@route = Route.new
	end




	private

	def set_route
		@train = Train.find(params[:id])
	end

	def route_params
		params.require(:train).permit(:number)
	end
end