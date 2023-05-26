class AirbenderService
  def nation_members(search_nation)
    search_nation.gsub!('_', '+')
    get_url("/api/v1/characters?affiliation=#{search_nation}")
  end

  def limit_per_page(character_amount)
    get_url("/api/v1/characters?perPage=#{character_amount}")
  end

  private

  def conn 
    Faraday.new(url: 'https://last-airbender-api.fly.dev')
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end