class Year
    def self.leap?(year)
      (year % 4).zero? && !(year % 100).zero? || (year % 400).zero?
    end
  end
  
# Example usage
years = [1996, 1997, 1998, 1900, 1800, 2400, 2000]
years.each do |year|
  puts "Year #{year} is a leap year: #{Year.leap?(year)}"
end