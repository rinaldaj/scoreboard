class MainController < ApplicationController
  def index
  	@metrics = Metric.all
  end
  def incr
	  redirect_to metrics_path
  end
  def decr
	  redirect_to metrics_path
  end
end
