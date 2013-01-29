require_relative "../../app/models/semantic_role"

describe SemanticRole do
  sr = SemanticRole.new([], "A1")
  it "should have a label" do
    sr.label.should == "A1"
  end

  it "should have tokens" do
    sr.tokens.should == []
  end
end