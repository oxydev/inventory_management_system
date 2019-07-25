class UseRequestHistoriesController < ApplicationController
  before_action :authenticate_user!
  def index
    @q = UseRequestHistory.ransack(params[:q])
    @uses = @q.result
  end
end

