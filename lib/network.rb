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
    highest = []
    @shows.each do |show|
      salaries = show.characters.sort_by do |character|
        character.salary
      end
      highest << salaries.last
    end
    highest_network = highest.last.actor
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
