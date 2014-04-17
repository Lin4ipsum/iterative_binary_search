class Search

  def self.binary_search(array, value)
    max_value = array.last
    min_value = array.first
    mid_index = array.length/2

    return nil if value < min_value || value > max_value

    while value != array[mid_index] and array.include?(value)
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
end