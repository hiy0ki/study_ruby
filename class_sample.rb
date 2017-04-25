class C
  def my_upcase(str)
    return str.upcase()
  end

  def get_self()
    return self
  end
end

class D < C
  Const = "fugafuga"
  #p(D::hoge(Const))

  def hoge(str)
    return C.new().my_upcase(str)
  end
end

c = C.new()
p c.my_upcase("hogehoge")

p(c)
p(c.get_self)


