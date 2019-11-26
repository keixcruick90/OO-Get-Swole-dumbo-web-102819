class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def self.all
    @@all
  end

  def memberships

  end

  def gyms

  end

  def self.average_lift_total

  end

  def gym_membership_cost

  end

  def new_membership(cost, gym)
    Membership.new(cost, self, gym)
  end
end
