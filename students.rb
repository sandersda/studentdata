students = []
eye_colors = []
ages = []
blood_types = []

File.open("student_data.csv").each do |line|
	info =  line.split(",")
	students.push(info[0].strip)
	eye_colors.push(info[1].strip)
	ages.push(info[2].strip.to_i)
	blood_types.push(info[3].strip)
end

print students, "\n"
print eye_colors, "\n"
print ages, "\n"
print blood_types, "\n"


def brown_eye_check(eye_colors)
	number_of_brown = 0
	eye_colors.each do |color|
		if color == "Brown"
			number_of_brown += 1
		end
	end
	return "#{number_of_brown} students have brown eyes."
end

puts brown_eye_check(eye_colors)
puts ""
def driving_age(ages, students)
	i = 0
	list_of_students = []
	ages.each do |age|
		if age >= 16
			list_of_students.push(students[i])
		end
		i += 1
	end
	return list_of_students
end


print driving_age(ages, students)
puts ""


def even_check(integer)
	modulus_of_integer = integer % 2
	if modulus_of_integer == 0
		return true
	end
	return false
end


def amount_of_green_eyed_girls(eye_colors, students)
	i = 0
	list_of_girls = []
	eye_colors.each do |color|
		if color == "Green" and even_check(i)
			list_of_girls.push(students[i])
		end
		i += 1
	end
	return list_of_girls
end


print "\n", amount_of_green_eyed_girls(eye_colors, students), "\n"

def amount_of_sophomores(students, ages)
	i = 0
	list_of_sophomores = []
	ages.each do |age|
		if age == 15
			list_of_sophomores.push(students[i])
		end
		i += 1
	end
	return list_of_sophomores
end

def vowel_check(string)
	total_vowels = 0
	string.each_char do |letter|
		if letter.downcase == "a" or letter.downcase == "e" or letter.downcase == "i" or letter.downcase == "o" or letter.downcase == "u"
			total_vowels += 1
		end
	end
	return total_vowels
end


def sophomore_vowels(students, ages)
	number_of_sophomores = amount_of_sophomores(students, ages)
	most_vowel_amount = 0
	most_vowel_name = number_of_sophomores[0]
	i = 0
	number_of_sophomores.each do |sophomore|
		if vowel_check(sophomore) > most_vowel_amount
			most_vowel_amount = vowel_check(sophomore)
			most_vowel_name = number_of_sophomores[i]
		end
		i += 1
	end
	return most_vowel_name
end

puts "\n", sophomore_vowels(students, ages), "\n"


def average_age_of_green_eyes(eye_colors, ages)
	i = 0
	total_age_of_greens = 0
	number_of_green = 0
	eye_colors.each do |color|
		if color == "Green"
			total_age_of_greens += ages[i]
			number_of_green += 1
		end
		i += 1
	end
	return total_age_of_greens / number_of_green
end

puts average_age_of_green_eyes(eye_colors, ages)

def closest_green_eyed_to_average(students, ages, eye_colors)
	i = 0
	eye_colors.each do |eye_color|
		if eye_color == "Green" and ages[i] == 15
			return students[i]
		end
		i += 1
	end
end	

puts "\n", closest_green_eyed_to_average(students, ages, eye_colors), "\n"

def most_donors(students, blood_types)
	list_of_donors = []
	i = 0
	blood_types.each do |blood_type|
		if blood_type == "AB"
			list_of_donors.push(students[i])
		end
		i += 1
	end
end

print "\n", most_donors(students, blood_types)

