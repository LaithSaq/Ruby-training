class Foo
  def initialize(a,b)
    @a = a
    @b = b
  end

  def here
    'test here'
  end

  def self.there
    'there test'
  end
end



foo = Foo.new(1,'2')
p foo.here 
p foo.there