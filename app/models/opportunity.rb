class Opportunity < ApplicationRecord
    after_save :fetch_details

    validates_presence_of :oppo_id

    private

    def fetch_details
        FetchDetailJob.perform_later(id)
    end
end
