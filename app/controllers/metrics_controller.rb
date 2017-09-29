class MetricsController < ApplicationController
	http_basic_authenticate_with name:"kuro", password: "shiro",only: [:destroy,:create]
	def new
	end

	def del
	end

	def create
		@metric = Metric.new(get_params)
		@metric.save
		redirect_to '/'
	end
	def show
		@metric = Metric.find(params[:id])
	end

	def update
		tmetric = Metric.find(params[:id])
		tmetric.number = tmetric.number + params[:change_by].to_i
		tmetric.save
		redirect_to '/'
	end

	def destroy
		dmetric = Metric.find(params[:id])
		dmetric.destroy
		redirect_to '/'
	end

	private
		def get_params
			params.require(:metric).permit(:name)
		end
end
