class AirbenderService
  def nation_members(search_nation)
    search_nation.gsub!('_', '+')

    # conn = Faraday.new(url: 'https://last-airbender-api.fly.dev')
    response = conn.get("/api/v1/characters?affiliation=#{search_nation}")
    
    payload = JSON.parse(response.body, symbolize_names: true)
    @members = payload.map { |member_data| Member.new(member_data) }
  end

  private

  def conn
    Faraday.new(url: 'https://last-airbender-api.fly.dev')
  end
end