class RegisterUser

  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def run(name)
    unless see_if_user_exists
      Person.new(name)
    end
  end

  def see_if_user_exists
  end
end

ru = RegisterUser.new
ru.name = 'whatever i want'