module Resolvers
  class PoliciesResolver < BaseResolver
    type [Types::PolicyType], null: false

    def resolve
      response = Faraday.new(ENV['POLICYZINHA_HOST']).get("/policies")
      JSON.parse(response.body)
    end
  end
end
