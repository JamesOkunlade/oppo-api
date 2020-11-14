class FetchDetailJob < ApplicationJob
    queue_as :urgent

    discard_on(StandardError) do |job, error|
      ExceptionNotifier.caught(error)
    end

    def perform(id)
      opportunity = Opportunity.find(id)
      OpportunityDetail.new(opportunity).fetch_details
    end
end
  