employee_num = nil

puts "How many employees will be processed?"
employee_num = gets.chomp.to_i

current_employee = 0

until current_employee == employee_num

  is_vampire = "Results inconclusive."

  puts "What is your name? (FirstName LastName)"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born? (YYYY)"
  birth_year = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
  garlic_pref = gets.chomp

  puts "Would you like to enroll in the company's health insurance? (y/n)"
  hi_pref = gets.chomp

  correct_age = nil

  if age == (2016 - birth_year)
    correct_age = true
  else correct_age = false
  end

  def to_bool(str)
    result = nil
    if str == "y"
      result = true
    elsif str == "n"
      result = false
    else puts "Please enter a valid y/n string."
    end
  end

  wants_garlic = to_bool(garlic_pref)

  wants_hi = to_bool(hi_pref)

  if correct_age && (wants_garlic || wants_hi)
    is_vampire = "Probably not a vampire."
  end

  if !correct_age && !(wants_garlic && wants_hi)
    is_vampire = "Probably a vampire."
  end

  if !correct_age && !(wants_garlic || wants_hi)
    is_vampire = "Almost certainly a vampire."
  end
  
  puts "Do you have any allergies? Name them one at a time, pressing enter after each allergy. After exhausting all your allergies, please type done."
  allergy = gets.chomp
  
  while allergy != "done"
    if allergy == "sunshine"
      is_vampire = "Probably a vampire."
      puts "Any other allergies?"
      allergy = gets.chomp
    else puts "Any other allergies?"
      allergy = gets.chomp
    end
  end

  if name == "Drake Cula" || name == "Tu Fang"
    is_vampire = "Definitely a vampire."
  end

  puts is_vampire

  current_employee = current_employee + 1
  
end