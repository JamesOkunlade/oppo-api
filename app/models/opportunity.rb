class Opportunity < ApplicationRecord
    after_save :fetch_details
    before_save :check_record

    validates_presence_of :oppo_id

    private

    def check_record
      existing_oppo = Opportunity.find_by(oppo_id: self.oppo_id)
      self.destroy if existing_oppo and existing_oppo.objective
    end

    def fetch_details
      FetchDetailJob.perform_later(id)
    end
end
