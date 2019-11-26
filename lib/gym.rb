class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end
  
  def memberships
    Membership.all.select { |membership| membership.gym == self}
  end

  def lifters
    memberships.map { |membership| membership.lifter}
  end

  def lifter_names
    lifters.map { |lifter| lifter.name}
  end

end
