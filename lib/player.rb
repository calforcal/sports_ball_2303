class Player
  attr_reader :name, :monthly_cost, :contract_length, :full_name, :nickname, :total_cost
  def initialize(name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost
    @contract_length = contract_length
    @nickname = nil
    @total_cost = contract_length * monthly_cost
  end

  def first_name
    full_name = @name.split(" ")
    full_name[0]
  end

  def last_name
    full_name = @name.split(" ")
    full_name[1]
  end

  def set_nickname!(nickname)
    @nickname = nickname
  end
end