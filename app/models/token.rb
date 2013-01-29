class Token
  
  attr_accessor :text, :part_of_speech, :named_entity, :sentence, :index
  
  def initialize(text, pos, ner, sentence, index)
    @text = text
    @part_of_speech = pos
    @named_entity = ner 
    @sentence = sentence
    @index = index
  end

  def to_s
    "#{text}"
  end
end