class Grains
    def self.square(range)
      raise ArgumentError, 'Square number must be between 1 and 64' unless (1..64).cover?(range)
      2**(range - 1)
    end
  
    def self.total
      (1..64).sum { |range| square(range) }
    end
  end
  