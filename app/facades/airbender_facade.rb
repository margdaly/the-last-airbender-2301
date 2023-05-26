class AirbenderFacade
  def nation_members(search_nation, character_amount)
    search_nation.gsub!('_', '+')
    json = service.nation_members(search_nation).limit_data(character_amount)
    Member.new(json)
  end

  private 

  def service
    @service ||= AirbenderService.new
  end

  def nation_search(search_nation)
    @nation_search ||= service.nation_members(search_nation)
  end

  def limit_data(character_amount)
    @limit_data ||= service.limit_per_page(character_amount)
  end
end