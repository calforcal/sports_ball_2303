class Team
  attr_reader :roster, :player_count
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
end