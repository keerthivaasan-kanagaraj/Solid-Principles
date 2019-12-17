class Gear
    attr_reader :chainring, :cog, :wheel
         def initialize(args)
            @chainring = args[:chainring] || 0
            @cog = args[:cog] || 0
            @wheel = args[:wheel] 
         end
    
         def gear_inches
             p ratio * diameter
         end
    
         def diameter
            wheel.diameter
         end
    
         def ratio
             chainring / cog.to_f
         end
    end
    
     class Wheel
     attr_reader :rim, :tire
         def initialize(rim, tire)
             @rim = rim
             @tire = tire
         end
    
         def diameter
             p rim + (tire * 2)
         end
     # ...
     end
    
     Gear.new(chainring: 52, cog:11, wheel: Wheel.new(26, 1.5)).gear_inches 