class Pangram
    def self.is_pangram?(str)
      alphabet = ('a'..'z').to_a
      str.downcase.chars.each do |char|
        alphabet.delete(char)
        break if alphabet.empty?
      end
      alphabet.empty?
    end
  end
  