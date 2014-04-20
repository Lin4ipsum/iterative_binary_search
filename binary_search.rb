class Search

  def self.binary_decorator(array, left, right, value)
    left_index = self.get_index(array, left)
    right_index = self.get_index(array, right)
    truncated_array = array[left_index..right_index]
    self.binary_search(truncated_array, value)
  end

  def self.binary_search(array, value)
    max_value = array.last
    min_value = array.first
    mid_index = array.length/2

    return nil if value < min_value || value > max_value

    while array.include?(value) && value != array[mid_index]
      if value < array[mid_index]
        mid_index -= 1
      end
      if value > array[mid_index]
        mid_index += 1
      end
    end

    if array[mid_index] == value
      return value
    else
      nil
    end
  end

  private
  
  def self.get_index(array, integer)
    array.index integer
  end
end