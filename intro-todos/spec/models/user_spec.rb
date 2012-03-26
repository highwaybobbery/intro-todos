require "spec_helper"

describe User, "with an email address" do
  subject { User.new("john@example.com") }

  it "knows it's email address" do
    subject.email_address.should == "john@example.com"
  end

  it "is signed in to the system" do
    subject.should be_signed_in
  end

  it "returns email for to_s" do
    subject.to_s.should == "john@example.com"
  end
end

describe User, "without an email address" do
  subject { User.new(nil) }

  it "has no email address" do
    subject.email_address.should be_nil
  end

  it "is not signed in to the system" do
    subject.should_not be_signed_in
  end

  it "returns '' for to_s" do
    subject.to_s.should == ""
  end
end
