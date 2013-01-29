require_relative "../../app/models/sentence"
describe Sentence do
  sentence = Sentence.new "Ahmed restated his determination to drive governance from an empirical perspective, to ensure that the business of governance is based on a solid foundation of planning."
  it "should have verbs" do
    sentence.should have(4).verbs
    sentence.verbs[0].text.should == "restated"
  end

  it "should assign a verb's semantic roles'" do
    sentence.verbs[0].should have(4).semantic_roles
    sentence.verbs[0].semantic_roles.last.should have(22).tokens
    sentence.verbs[0].semantic_roles.last.label.should == "AM-PNC"
    sentence.verbs[0].semantic_roles.first.should have(1).tokens
    sentence.verbs[0].semantic_roles.first.label.should == "A0"
    sentence.verbs[3].semantic_roles.first.should have(4).tokens
    sentence.verbs[3].semantic_roles.first.label.should == "A1"
  end
end