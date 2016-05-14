class EquilibriumIndex
  def solution(a)
    n = a.length - 1

    for index in 0..n
      first_half  = a[0..index]
      second_half = a[(index + 1)..-1]

      first_half.delete_at(index)

      first_half_sum  = first_half.reduce(0, :+)
      second_half_sum = second_half.reduce(0, :+)

      result = index if second_half_sum == first_half_sum
    end

    result ? result : -1
  end
end
