module Resolvers
  class PolicyResolver < BaseResolver
    type Types::PolicyType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      headers = { 'Authorization' => "Bearer #{context[:token]}" }
      response = Faraday.new(url: ENV['POLICYZINHA_HOST'], headers: headers).get("/policies/#{id}")

      JSON.parse(response.body)
    end
  end
end
