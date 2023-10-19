def is_prime(number)
  if number <= 1
    false
  elsif number <= 3
    true
  elsif number % 2 == 0 || number % 3 == 0
    false
  else
    i = 5
    while i * i <= number
      if number % i == 0 || number % (i + 2) == 0
        false
      end
      i += 6
    end
    true
  end
end

print "Введіть число: "
num = gets.chomp.to_i

if is_prime(num)
  puts "#{num} - просте число."
else
  puts "#{num} - не є простим числом."
end