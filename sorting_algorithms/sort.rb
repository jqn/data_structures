class Sort
  def bubble_sort(numbers)
    numbers.length.times do
      numbers.each_with_index do |current_number, index|
        next_index  = index + 1
        next_number = numbers[next_index]

        break if next_number.nil?

        if current_number > next_number
          numbers[index]      = next_number
          numbers[next_index] = current_number
        end
      end
    end

    numbers
  end

  def insert_sort(numbers)
    sorted_numbers = []

    numbers.each do |insert_number|
      for index in 0..sorted_numbers.length
        current_number = sorted_numbers[index]

        if current_number.nil? || insert_number < current_number
          sorted_numbers.insert(index, insert_number)
          break
        end
      end
    end

    sorted_numbers
  end

  def merge_sort(numbers)
    first_half, second_half = split(numbers)

    first_half  = merge_sort(first_half)  unless first_half.length  <= 1
    second_half = merge_sort(second_half) unless second_half.length <= 1

    sorted_numbers = []

    for index in 0..(first_half.length - 1)
      first_half_number  = first_half[index]
      second_half_number = second_half[index]

      case
      when second_half_number.nil?
        sorted_numbers << first_half_number
      when first_half_number > second_half_number
        sorted_numbers << second_half_number
        sorted_numbers << first_half_number
      when first_half_number < second_half_number
        sorted_numbers << first_half_number
        sorted_numbers << second_half_number
      end
    end

    sorted_numbers
  end

  private

  def split(array)
    if array.length.even?
      mid_index = (array.length / 2) - 1
    else
      mid_index = array.length / 2
    end

    first_half  = array.slice!(0..mid_index)
    second_half = array

    return first_half, second_half
  end
end
