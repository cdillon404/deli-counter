require 'pry'

=begin
def line(katz_deli)
    place_in_line = []
# show everyone's current index position, plus one, their place in line
    if katz_deli.length == 0
        puts "The line is currently empty."
    elsif katz_deli.length > 0
        katz_deli.each_with_index do |name, index|
            place_in_line << index + 1
            puts "The line is currently: #{place_in_line} + #{name}"
        end
        binding.pry
    end
end
=end

def line(katz_deli)
    if katz_deli.empty?
        puts "The line is currently empty."
    else 
        statement = ["The line is currently: "]
        katz_deli.each.with_index(1) do |name, index|
            statement.push("#{index}. #{name} ")
        end
        puts statement.join.rstrip
    end
end

def take_a_number(katz_deli, name)
    # takes in two arguments, array and the next person joining the line
    # add that person to the array, find out their place number in line - index plus 1
    # welcome them "Welcome name. You are number 1 in line."
        katz_deli.push(name)     
        puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
end

def now_serving(katz_deli)
    if katz_deli.empty?
        puts "There is nobody waiting to be served!"
    else
        first_person = katz_deli[0]
        puts "Currently serving #{first_person}."
        katz_deli.shift
    end
end

