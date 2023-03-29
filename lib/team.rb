class Team
  attr_reader :roster, :player_count, :long_term, :short_term, :value
  def initialize(name, location)
    @name = name
    @location = location
    @roster = []
  end

  def add_player(player)
    @roster << player
  end

  def player_count
    @roster.count
  end

  def long_term_players
    long_term = @roster.select {|player| player.contract_length > 24}
  end

  def short_term_players
    short_term = @roster.select {|player| player.contract_length <= 24}
  end

  def total_value
    value = @roster.map {|player| player.total_cost}
    value.sum
  end

  def details
    {
      "total_value" => self.total_value,
      "player_count" => self.player_count
    }
  end
end