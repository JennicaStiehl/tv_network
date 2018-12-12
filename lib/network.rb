class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    @shows.sort_by do |show|
      show.characters.each do |character|
        # binding.pry
        character.salary
      end.sort
    end.last
  end

  def payroll
    payroll = {}
    @shows.each do |show|
      show.characters.each do |character|
        payroll[character.actor] = character.salary
      end
      payroll
    end
    payroll
  end
end
