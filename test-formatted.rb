class MyPoorlyFormattedFile
  def self.indented_badly(should, have, used, parens)
    # Lambda syntax should be maintained
    x = lambda do |a|
      a * 3
    end
    x = proc do
      x * 3
    end
    # Should be reduced to {} oneline syntax
    x = lambda do |a|
      a + 1
    end
  end
  def too_much_space_above
    # I expect 1 line of whitespace above
  end
  def chaining
    MyClass.where(things: true).or.where.not(other_things: true).where(things: true).or.where.not(other_things: true).where(things: true).or.where.not(other_things: true)
  end
  def no_space_above
    # I expect 1 line of whitespace to be added between these methods
  end
  def hard_things_to_parse_right
    # I expect these things to not be changed
    1000000
    ["string", "syntax"]
    [:symbol, :syntax]
    ["regular", "a]]ay"]
    # Both of these are passed
    "(string)"
    32
  end
end