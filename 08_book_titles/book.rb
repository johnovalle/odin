class Book
  def title=(title)
    words = title.split(' ')
  
    words.each do |word| 
      word.capitalize!
    end
    capital_case = words.join(' ')
    ##very ugly and lazy, it's late...
    non_caps =  {'\sThe\s' => ' the ', '\sA\s' => ' a ', '\sOver\s' => ' over ',
                 '\sAnd\s' => ' and ', '\sIn\s' => ' in ', '\sOf\s' => ' of ', '\sAn\s' => ' an ' }
    non_caps.each { |cap, non| capital_case.sub!(/#{cap}/,non) }
    @title = capital_case
  end
  
  def title
    @title
  end
end