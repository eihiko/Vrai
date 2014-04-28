




class Vrai

  def _interpret text
  end  
  
end

class Self

end

class EnglishFluent
  def _split(english)
    english.delete!("\n")
    sentences = english.scan(/[^\.?\??!?;?]+[\.?\??!?;?]*/)
    sentences.map! { |sentence| sentence.scan(/[^\,]+[\,]*/) }
  end
end

