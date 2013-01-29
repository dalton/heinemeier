class SemanticRole

  attr_accessor :label, :tokens

  def initialize(tokens, label)
    @tokens = tokens
    @label = label
  end
end