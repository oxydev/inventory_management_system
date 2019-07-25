class UseHistoriesController < ApplicationController
  def index
    @q = UseHistory.ransack(params[:q])
    @uses = @q.result
  end
end
