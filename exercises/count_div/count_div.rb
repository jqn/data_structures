class CountDiv
  def solution(a, b, k)
    multiples = (b / k) - (a / k)
    multiples += 1 if a % k == 0

    multiples
  end
end
