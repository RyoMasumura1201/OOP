class Gear
    attr_reader :chainring, :cog, :rim, :tire
    def initialize(chainring, cog, rim, tire)
        @chainring = chainring
        @cog = cog
        @rim = rim
        @tire = tire
    end

    def ratio
        chainring /cog.to_f
    end

    def gear_inches
        ratio * Wheel.new(rim,tire).diameter
    end

    Wheel = Struct.new(:rim,:tire) do
        
    end
    
end

class Wheel
    attr_reader :rim, :tire

    def initialize(rim,tire)
        @rim = rim
        @tire = tire
    end

    def diameter
        rim + (tire * 2)
    end

    def circumference
        diameter * Math::PI
    end
end

@wheel = Wheel.new(26,1.5)

puts @wheel.circumference

puts Gear.new(52,11,@wheel).gear_inches
puts Gear.new(52,11).ratio
