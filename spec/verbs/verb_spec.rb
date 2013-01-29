require_relative "../../app/models/verb"

describe Verb do

  sentence = "Ahmed restated his determination to drive governance from an empirical perspective, to ensure that the business of governance is based on a solid foundation of planning."
  token = nil
  verb = Verb.new(token)
  it "should have semantic roles" do
    verb.semantic_roles.should == []
  end

  it "should be able to add semantic roles" do
    verb.semantic_roles << "new"
    verb.semantic_roles.should == %w(new)
  end
end