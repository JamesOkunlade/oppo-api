class OpportunitiesController < ApplicationController
  before_action :set_opportunity, only: [:show, :destroy]

  def index
    @opportunities = Opportunity.all
    json_response(@opportunities)
  end

  def create
    @opportunity = Opportunity.create!(opportunity_params)
    json_response(@opportunity, :created)
  end

  def show
  end
  
  def destroy
    @opportunity.destroy
    head :no_content
  end

  private

  def opportunity_params
    params.permit(:oppo_id)
  end

  def set_opportunity
    @opportunity = Opportunity.find(params[:id])
  end
end
