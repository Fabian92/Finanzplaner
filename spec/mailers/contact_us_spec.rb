require "spec_helper"

describe ContactUs do
  describe "view1" do
    let(:mail) { ContactUs.view1 }

    it "renders the headers" do
      mail.subject.should eq("View1")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "view2" do
    let(:mail) { ContactUs.view2 }

    it "renders the headers" do
      mail.subject.should eq("View2")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
