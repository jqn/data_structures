class AlphabetBuilder
  attr_reader :words

  def initialize(words)
    @words = words
  end

  def build
    alphabet = []

    n = words.max_by(&:length).length - 1

    for index in 0..n
      words.each_with_index do |current_word, current_index|
        previous_index = current_index - 1
        previous_word  = words[previous_index]

        case
        when alphabet.empty?
          alphabet << current_word[index]
        when !alphabet.include?(current_word[index]) && alphabet.include?(previous_word[index])
          alphabet.insert(alphabet.index(previous_word[index]) + 1, current_word[index])
        end
      end
    end

    alphabet.join
  end
end
