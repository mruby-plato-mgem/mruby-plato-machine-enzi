#
# PlatoEnzi::Machine class
#
module PlatoEnzi
  class Machine
    def self.delay(ms)
      ENZI::delay(ms)
    end

    def self.delay_us(us)
      ENZI::delay_us(us)
    end

    def self.millis
      ENZI::millis
    end

    def self.micros
      ENZI::micros
    end
  end
end

# register enzi device
Plato::Machine.register_device(PlatoEnzi::Machine)
