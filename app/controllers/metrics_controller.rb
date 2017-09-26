class MetricsController < ApplicationController
	def new
	end

	def create
		@metric = Metric.new(get_params)
		@metric.save
		redirect_to '/main/index'
	end
	def show
		@metric = Metric.find(params[:id])
	end

	def update
		tmetric = Metric.find(params[:id])
		tmetric.number = tmetric.number + params[:change_by].to_i
		tmetric.save
		redirect_to '/main/index'
	end

	private
		def get_params
			params.require(:metric).permit(:name)
		end
end
