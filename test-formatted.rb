class MyPoorlyFormattedFile
  def self.indented_badly(should, have, used, parens)
    x = lambda do |a|
      a * 3
    end
    x = proc do
      x * 3
    end
    x = lambda do |a|
      a + 1
    end
  end
  def too_much_space_above
  end
  def chaining
    MyClass.where(things: true).or.where.not(other_things: true).where(things: true).or.where.not(other_things: true).where(things: true).or.where.not(other_things: true)
  end
  def no_space_above
  end
  def hard_things_to_parse_right
    1000000
    ["string", "syntax"]
    [:symbol, :syntax]
    ["regular", "a]]ay"]
    "(string)"
    32
  end
end