module SomeFramework
    class Gear
        attr_reader :chainring, :cog, :wheel
        def initialize(chainring, cog, wheel)
            @chainring = chainring
            @cog = cog
            @wheel = wheel
        end
    end
end

module GearWrapper
    def self.gear(args)
        SomeFramework::Gear.new(args[:chainring],args[:cog],args[:wheel])
    end
end

GearWrapper.gear(
    :chainring =>52,
    :cog =>11,
    :wheel => Wheel.new(26,1.5).gear_inches
)