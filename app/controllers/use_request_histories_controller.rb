class UseRequestHistoriesController < ApplicationController
  def index
    @q = UseRequestHistory.ransack(params[:q])
    @uses = @q.result
  end
end

