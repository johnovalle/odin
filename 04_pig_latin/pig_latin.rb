def translate string
  cons = %w{b c d f g h j k l m n p q r s t v w x y z}
  dips = %w{c t q}
#   result = string.split('')
#   if cons.include?(result[0])
#     con = result.shift
#     result << con
#   end
  words = string.split(' ')
  split_words = words.map do |word|
    result = word.split('')
    while cons.include?(result[0])
      con = result.shift
      result << con
      if con == "q"
        following_u = result.shift
        result << following_u
      end
    end
    output = result.join('')
    output += "ay"
  end
  
  split_words.join(' ')
  
end