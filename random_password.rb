ARRAYS = {
  "types" => ["numbers", "capital letters", "lowercase letters", "special characters"],
  "numbers" => (0..9).map(&:to_s),
  "capital letters" => ("A".."Z").to_a,
  "lowercase letters" => ("a".."z").to_a,
  "special characters" => ["!", "@", "#", "$", "%", "^", "&", "*"],
  "password" => []
}

def fill_password_chars(type)
  puts "How many #{type}?"
  count = gets.chomp.to_i
  raise "Amount is too large" if count > ARRAYS[type].length
  ARRAYS["password"] << ARRAYS[type].shuffle.take(count)
end

ARRAYS["types"].each do |type|
  fill_password_chars(type)
end

password = ARRAYS["password"].flatten.shuffle.join

puts "Your new password is: #{password}"