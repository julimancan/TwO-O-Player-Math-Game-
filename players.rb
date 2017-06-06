class Players
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def alive?
    @lives > 0
  end
end


