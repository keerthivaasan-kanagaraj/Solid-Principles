class Computer
    def turn_on
        puts "Computer turned On"
    end

    def type
        puts "Typing..."
    end
end

class ComputerInternals
    def change_hard_drive
        puts "Changed Hard drive"
    end
end
    
class Programmer
    def initialize
        @computer = Computer.new
    end

    def use_computer
        @computer.turn_on
        @computer.type
    end
end

class Technician
    def initialize
        @computer_internals = ComputerInternals.new
    end

    def fix_computer
        @computer_internals.change_hard_drive
    end
end

p=Programmer.new
p.use_computer

t=Technician.new
t.fix_computer