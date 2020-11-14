class OpportunityDetail
    attr_reader :oppo_id
    # attr_accessor

    def initialize(opportunity)
        @opportunity = opportunity
        @oppo_id = @opportunity.oppo_id
    end

    def fetch_details
      oppo_details = check_api(oppo_id)
      objective = oppo_details["objective"]
      details = oppo_details["details"][0]["content"]
      slug = oppo_details["slug"]
      compensation = oppo_details["compensation"]["minAmount"]

      puts objective
      puts details
      puts slug
      puts compensation

      update_opportunity(objective, details, slug, compensation)
    end

    private

    def check_api(oppo_id)
      response = HTTParty.get("https://torre.co/api/opportunities/#{oppo_id}")
      formatted_response = response.parsed_response
      formatted_response
    end

    def update_opportunity(objective, details, slug, compensation)
        # @opportunity.update_attribute(:objective, objective)
        @opportunity.attributes = { objective: objective, details: details, slug: slug, compensation: compensation }
        @opportunity.save
    end
end