module Attributes
  attr_accessor :strength, :dexterity, :constitution,
                :wisdom, :intelligence, :charisma
  

  
  def self.get_bonus(attribute)
    (attribute - 10) / 2
  end
  
  def bonus
    (self - 10) / 2
  end
  
  private
  

  
end


class Character
  include Attributes
  @@class_variable = "Test!"
  CONSTANT = "Adventurer"
  
  def update_strength(new_score)
    puts " Char has str of #{strength}"
  end
  
  def self.show_class_variable
    @@class_variable
  end
  
  def self.set_class_variable=(text)
    @@class_variable = text
  end

  
end

puts Character.show_class_variable
Character.set_class_variable=("Willow!")
puts Character.show_class_variable
puts Character::CONSTANT