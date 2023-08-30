def half_pyramid
    p "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    stages = gets.chomp.to_i
    stage_level = 0
    stage = "#" * stage_level
    space = " "
    space_number = stages
    stages.times do
        stage_level += 1
        space_number -= 1
        puts "#{space*space_number}"+"#{stage * stage_level}"
    end 
end

def full_pyramid
    p "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    stages = gets.chomp.to_i
    stage_level = 1
    stage = "#"
    space = " "
    space_number = stages
        stages.times do
            space_number -= 1
            puts "#{space*space_number}"+"#{stage * stage_level}"+"#{space*space_number}"
            stage_level += 2
        end
end

def wtf_pyramid
    p "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    stages = gets.chomp.to_i
    stage_level = 1
    stage = "#"
    space = " "
    space_number = (stages + 1) / 2
        space_number.times do
            space_number -= 1
            puts "#{space*space_number}"+"#{stage * stage_level}"+"#{space*space_number}"
            stage_level += 2
        end
        stage_level -= 2           
        while stage_level >= 1
            space_number += 1
            stage_level -= 2           
            puts "#{space*space_number}"+"#{stage * stage_level}"+"#{space*space_number}"
        end
end

wtf_pyramid