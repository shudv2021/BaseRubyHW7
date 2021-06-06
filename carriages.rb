require_relative 'modules.rb'
require_relative 'counter.rb'

class Carriage
  include Producer
  include Counter
  attr_reader :carr_num
  CARRIAGE_NAMBER_FORMAT = /[0-9]{3}-[а-я]{2}$/i
  def valide_format!(carr_num)
    (carr_num =~ CARRIAGE_NAMBER_FORMAT) == 0
  end

  def validate!(carr_num)
    raise ' Неверный формат имение поезда. ' if valide_format!(carr_num) == false
  end

  def initialize(carr_num)
    @carr_num = carr_num
    validate!(@carr_num)
    increase_counter
  end
end