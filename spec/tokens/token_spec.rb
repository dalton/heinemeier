require_relative "../../app/models/token"
describe Token do
  sentence = "Ahmed restated his determination to drive governance from an empirical perspective, to ensure that the business of governance is based on a solid foundation of planning."
  token = Token.new("determination", "NP", "0", sentence, 3)
  it "should have text" do
    token.text.should == "determination"
  end
  it "should have a part of speech tag" do
    token.part_of_speech.should == "NP"
  end
  it "should have a sentence" do
    token.sentence.should  be sentence
  end
  it "should have an index" do
    token.index.should == 3
  end
  it "should have a named entity tag" do
    token.named_entity.should == "0"
  end
end