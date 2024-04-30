module Resolvers
  class PoliciesResolver < BaseResolver
    type [Types::PolicyType], null: false

    def resolve
      headers = { 'Authorization' => "Bearer #{context[:token]}" }
      response = Faraday.new(url: ENV['POLICYZINHA_HOST'], headers: headers).get('/policies')

      JSON.parse(response.body)
    end
  end
end
