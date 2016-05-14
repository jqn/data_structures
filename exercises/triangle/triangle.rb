class Triangle
  def solution(a)
    result = 0
    a.compact!

    return result if a.length < 3 || a.empty?

    a.sort.each_cons(3) do |s1, s2, s3|
      result = 0 if [s1, s2, s3].any? { |n| n <= 0 }
      result = 1 if (s1 + s2) > s3
    end

    result
  end
end
