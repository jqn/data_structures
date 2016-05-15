class Task1
  def solution(x, a)
    l       = a.length
    middle  = (l / 2) + (l.even? ? 1 : 0)

    counter = 0
    n       = l - 1

    for index in 0..n
      if index > middle
        counter += 1 if a[index] != x
      else
        counter += 1 if a[index] == x
      end
    end

    counter
  end
end
