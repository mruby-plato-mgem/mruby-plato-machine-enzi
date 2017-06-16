# PlatoEnzi::Machine module

module ENZI
  def self.delay(ms); ms; end
  def self.delay_us(us); us; end
  def self.millis; 0; end
  def self.micros; 0; end
end

assert('Machine', 'class') do
  assert_equal(PlatoEnzi::Machine.class, Class)
end

assert('Machine', 'delay') do
  assert_nothing_raised {
    PlatoEnzi::Machine.delay(1)
    Plato::Machine.delay(1)
  }
end

assert('Machine', 'delay_us') do
  assert_nothing_raised {
    PlatoEnzi::Machine.delay_us(1)
    Plato::Machine.delay_us(1)
  }
end

assert('Machine', 'millis') do
  t1 = PlatoEnzi::Machine.millis
  t2 = Plato::Machine.millis
  assert_true(t1 && t2)
end

assert('Machine', 'micros') do
  t1 = PlatoEnzi::Machine.micros
  t2 = Plato::Machine.micros
  assert_true(t1 && t2)
end
