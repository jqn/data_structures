class Iterator
  def find_gap(number)
    number.gsub(/0+$/, '').split('1').max_by(&:length).length
  end
end
