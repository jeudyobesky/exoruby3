def ask_first_name
    p "Quel est ton prénom ?"
    first_name = gets.chomp.to_s
    return first_name

end

def say_hello (first_name)
    p "hello #{first_name}"
end

first_name = ask_first_name
say_hello(first_name)