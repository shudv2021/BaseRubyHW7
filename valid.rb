module Valid
  TRAIN_NUMBER_FORMAT =/[0-9]{3}-[а-я]{2}$/i
  CARRIAGE_NAMBER_FORMAT = /[0-9]{3}-[а-я]{2}$/i
  STATION_FORMAT = /[а-я]*$/i

  def validate!(object_num, right_format)
    raise ' Неверный формат имени объекта! ' if (object_num =~ right_format) != 0
  end

  def valid?
    validate!
  rescue
    false
  end

end