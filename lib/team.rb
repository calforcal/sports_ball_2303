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

  def average_cost_of_player
    average_cost = self.total_value / self.player_count
    average_cost_digits = average_cost.digits
    string_digits = average_cost_digits.map {|num| num.to_s}

    siloed_nums = string_digits.each_slice(3).map {|num| num.join}
    siloed_nums.join(",").reverse!.prepend("$")
  end

  def players_by_last_name
    string = []
    @roster.each {|player| string << player.last_name}
    string.sort.join(", ")
  end
end