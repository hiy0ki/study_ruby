class C
  def my_upcase(str)
    return str.upcase()
  end

  def get_self()
    return self
  end
end

c = C.new()
p c.my_upcase("hogehoge")

p(c)
p(c.get_self)


