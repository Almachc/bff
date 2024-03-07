module Resolvers
  class PolicyResolver < BaseResolver
    type Types::PolicyType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      response = Faraday.new(ENV['POLICYZINHA_SERVICE']).get("/policies/#{id}")
      JSON.parse(response.body)
    end
  end
end
