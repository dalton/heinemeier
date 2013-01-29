require_relative "../../app/models/senna"
senna = Senna.new("Ahmed restated his determination to drive governance from an empirical perspective, to ensure that the business of governance is based on a solid foundation of planning.")
describe Senna do
  it "should tokenize the sentence" do
    senna.should have(28).tokens
  end

  it "should returned the indexed token" do
    senna.tokens(0).should == %w(Ahmed	       NNP	      S-NP	     S-PER	              -	      S-A0	      S-A0	      S-A0	         O	\(S1\(S\(NP*\))
  end

  it "should collect the SRLs" do
    senna.should have(4).semantic_role_labels
    senna.semantic_role_labels.last.should == %w(O O O O O O O O O O O O O O O B-A1 I-A1 I-A1 E-A1 O S-V B-A2 I-A2 I-A2 I-A2 I-A2 E-A2 O)
  end


end