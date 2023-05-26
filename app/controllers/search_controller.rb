class SearchController < ApplicationController
  def index 
    @view_nation = params['nation'].gsub('_', '+').titleize
    search_nation = params['nation'].gsub('_', '+')
    response = Faraday.get("https://last-airbender-api.fly.dev/api/v1/characters?affiliation=#{search_nation}&perPage=25")
    results = JSON.parse(response.body, symbolize_names: true)
    @members = results.map do |member_data|
      Member.new(member_data)
    end
  end
end