class UseHistoriesController < ApplicationController
  before_action :authenticate_user!
  def index
    @q = UseHistory.ransack(params[:q])
    @uses = @q.result
  end
end
