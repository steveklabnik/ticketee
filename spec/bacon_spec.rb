require 'bacon'

describe Bacon do
  it "is editable" do
    expect(Bacon.new.edible?).to be(true)
  end

  it "expired!" do
    bacon = Bacon.new
    bacon.expired!
    expect(bacon).to_not be_edible
  end
end
