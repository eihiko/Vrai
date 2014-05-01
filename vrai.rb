
module EnglishFluent
  require 'linguistics'
  
  def _split(english)
    english.delete!("\n")
    sentences = english.scan(/[^\.?\??!?;?]+[\.?\??!?;?]*/)
    sentences.map! { |sentence| sentence.scan(/[^\,]+[\,]*/) }
    sentences.each { |sentence| sentence.map! {|clause| clause.split() }}
    return sentences
  end

  def _cache(clause)
    
  end

end

class Clause
end

class Word
  @text
  def initialize(word)
    @text = word
  end
end

class Apple
  def eat
    puts "YUM!"
  end
end

class Vrai
  include EnglishFluent
  def _interpret(text)
    words = _split(text)
  end  
  
end

class Self

end



v = Vrai.new
ARGV.each do |arg|
  p v._interpret arg.dup
end





