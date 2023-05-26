class SearchController < ApplicationController
  def index
    @view_nation = params['nation'].gsub('+', ' ').titleize
    # search_nation = params['nation'].gsub('_', '+')
    # conn = Faraday.new(url: 'https://last-airbender-api.fly.dev')
    # response = conn.get("/api/v1/characters?affiliation=#{search_nation}")
    # payload = JSON.parse(response.body, symbolize_names: true)
    # @members = payload.map { |member_data| Member.new(member_data) }
    @members = AirbenderService.new.nation_members(params['nation'])
  end
end