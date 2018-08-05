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
end