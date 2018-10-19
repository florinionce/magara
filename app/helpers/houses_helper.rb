module HousesHelper
  # Form saves gender information with integer
  # This function helps to return the integer to string.
  #
  #   int_to_gender(@house.preferred_gender)
  #   # => 'Either'
  def int_to_gender(int)
    {
      0 => 'Either',
      1 => 'Female',
      2 => 'Male'
    }[int]
  end

  # Visualize boolean value with checkmark or cross
  # HTML entity. If the +value+ is true, it returns checkmark.
  # Otherwise, it returns cross sign.
  #
  #   check_it(@house.checkbox.refrigerator)
  #   # => '&checkmark;'
  def check_it(value)
    value == true ? '&checkmark;'.html_safe : '&cross;'.html_safe
  end
end
