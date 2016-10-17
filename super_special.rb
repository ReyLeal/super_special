pets = ["Scooby", "Soco", "Summer", "Pixie", "Wilson", "Mason","Baron", "Brinkley", "Bella"]


def check_pets(pets)
pets.each do |name|
  if pets.any? {name.start_with?("S")}
    puts "My name starts with an S for super!"
  else
    puts "I'm pretty special too!"
  end
end
end

check_pets(pets)
