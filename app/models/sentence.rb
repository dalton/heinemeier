require_relative 'token'
require_relative 'verb'
require_relative 'senna'
class Sentence
  attr_accessor :verbs

  def initialize(text)
    @text = text
    @verbs = []
    @tokens = []
    senna = Senna.new text
    senna.tokens.each_with_index do |line, i|
      token = Token.new(line[0], line[1], line[3], self, i)
      @tokens << token
      @verbs << Verb.new(token) if line[4] == line[0]
    end

    @verbs.each_with_index do |verb, i|
      srl_hash = {}
      senna.semantic_role_labels[i].each_with_index do |srl, i|
        srl_hash[srl[/-(.*)/, 1]] = srl_hash[srl[/-(.*)/, 1]] ? srl_hash[srl[/-(.*)/, 1]] << i : [i]
      end
      srl_hash.delete(nil)
      srl_hash.each_pair do |srl, index_array|
        verb.semantic_roles << SemanticRole.new(index_array.collect { |i| @tokens[i] }, srl)
      end
    end
  end

end