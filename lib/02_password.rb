def signup
    puts "Choisis un password :"
    print " >"
    password = gets.chomp.to_s
    return password
end

def login(password)
    puts "Rentre ton password !"
    print" >"
    login = gets.chomp.to_s
    if login == password
        puts "Login successful"
    else
        until login == password
            puts "Recommence ..."
            print" >"
            login = gets.chomp.to_s
        end
        puts "Login successful"
    end
end

def welcome_screen
    puts "Bienvenue dans ton espace sécurisé"
end

def perform
    password = signup
    login (password)
    welcome_screen
end

perform
