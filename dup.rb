def deeper_dup(a)
  # multiple level arrays such as [ [1,2] , 2, [[2,1], 2]]
  a.map {
    |x|
    if x.class == Fixnum
      x
    elsif x.any? {|element| element.is_a?(Array)}
      deeper_dup(x)
    else
      x.dup
    end
  }
end

b = [1,2]

c = deeper_dup(b)

puts("first level")
print(c)
puts("")
print(b)
puts("")
puts(c.object_id == b.object_id)
puts("")

d = [1, [2,3]]

e = deeper_dup(d)

puts("second level")
print(d)
puts("")
print(e)
puts("")
puts(d.object_id == e.object_id)
puts("")
puts(d[1].object_id == e[1].object_id)
