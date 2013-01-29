class Senna

  def initialize(sentence)
    @sentence = sentence
    @output = `echo "#{sentence.strip}" | senna -path $SENNA_DATA`
    @tokens =  @output.split("\n").collect{|t| t.split("\t").map(&:strip)}
  end

  def tokens(index=nil)
    index.nil? ? @tokens : @tokens[index]
  end

  def semantic_role_labels
    verb_indexes.collect do |i|
     tokens.collect do |token|
       token[i]
     end
    end
  end

  private
  def verb_indexes
    return [] unless tokens.first
    last_verb_index = tokens.first.length - 2
    (5..last_verb_index)
  end
end