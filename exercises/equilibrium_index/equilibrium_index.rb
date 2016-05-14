class EquilibriumIndex
  def solution(a)
    n = a.length - 1
    
    first_half  = 0
    second_half = a.reduce(0, :+)

    for index in 0..n
      second_half -= a[index]

      result = index if second_half == first_half

      first_half += a[index]
    end

    result ? result : -1
  end
end
