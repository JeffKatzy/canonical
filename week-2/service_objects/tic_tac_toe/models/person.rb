class Person
  attr_accessor :first_name, :last_name, :hometown

  def full_name
    if first_name && last_name
      "#{first_name} #{last_name}"
    else
    end
  end
end