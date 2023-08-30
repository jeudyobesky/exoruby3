
def game
    floor = 0
    lap = 1
    until floor == 10 do
        p dice = rand(1..6)
        if dice == 5 || dice == 6
            floor += 1
            p "Bravo tu as fait #{dice}, tu as avancé, tu es désormais #{floor} étages"
        elsif dice == 1
            if floor <= 0
            floor = 0
            else
            floor -= 1
            end
            p "Tu as fait #{dice} ,tu as reculé, tu es désormais #{floor} étages"
        else dice == 2 || dice == 3 || dice == 4
            p "Tu as fais #{dice} tu est toujours au #{floor} étages"
        end
        lap += 1
    end
    puts "BRAVO ! tu est arrivé au 10 éme étages"
    return lap
end

def average_finish_time(lap)
    99.times do 
        game
    end
    p "Le nombre de tours moyen pour 100 partie est de #{lap}"
end

lap = game
average_finish_time(lap)