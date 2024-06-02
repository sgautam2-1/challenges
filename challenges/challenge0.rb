# Name: Saurav Gautam 


print "Enter the subtotal: "
sub_total = gets.chomp.to_f

# if sub_total % 1 != 0
#     puts "Please enter the amount in integer value"
#     exit
# end

# sub_total = 20
PST_RATE = 0.07
GST_RATE = 0.05

#Calculations
Pst = PST_RATE * sub_total
Gst = GST_RATE * sub_total
grand_total = sub_total + Pst + Gst

#print value to terminal 
puts "Subtotal = $#{sub_total}"
puts "PST = $#{Pst}"
puts "GST = $#{Gst}"
puts "Grand Total = $#{grand_total}"


# In Ruby, the + operator expects both operands to be strings when used for concatenation(Series of interconnected things). In the corrected code, the variables sub_total, pst, gst, and grand_total are numbers (floats), not strings.

# So, when you want to concatenate them with the string "Subtotal = ", "PST = ", "GST = ", and "Grand Total = ", you need to convert these numbers to strings first. This is done using the .to_s method, which converts a number to its string representation.

if (grand_total <= 5)
    puts "Pocket Change"
elsif (grand_total >= 6 && grand_total <20)
    puts "Wallet Time!"
elsif (grand_total > 20)
    puts "Charge It!!"
end 