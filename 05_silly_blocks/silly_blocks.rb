def reverser
  words = yield.split(' ')
  reversed = words.map { |word| word.reverse }
  reversed.join(' ')
end

def adder(y=1)
  yield + y
end

def repeater(inter=1)
  inter.times { yield }
end