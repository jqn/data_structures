class Task2
  def solution(a)
    decimal = to_decimal(a)
    binary  = []

    until decimal.zero?
      binary << (decimal % -2).abs

      decimal /= -2
    end

    binary
  end

  private

  def to_decimal(a)
    n       = a.length - 1
    decimal = 0

    for index in 0..n
      bit  = a[index]
      base = index.even? ? 2 : -2

      decimal += (bit * (base ** index))
    end

    decimal
  end
end
