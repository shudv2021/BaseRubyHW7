require_relative 'modules.rb'
require_relative 'counter.rb'
require_relative 'valid.rb'
class Carriage
  include Producer
  include Counter
  include Valid
  attr_reader :carr_num
  def initialize(carr_num)
    @carr_num = carr_num
    validate!(@carr_num, CARRIAGE_NAMBER_FORMAT)
    increase_counter
  end
end