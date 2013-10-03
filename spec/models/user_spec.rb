require 'spec_helper'

describe User do
  it { should respond_to(:username, :email, :password, :password_confirmation, :remember_me) }

  subject(:user) { FactoryGirl.build(:user) }

  context "with valid factory" do
    it { should be_valid }
    specify { user.save.should == true }
  end

  context "it should fail without username" do
    before { user.username = "" }
    it { should_not be_valid }
    specify { user.save.should == false }
  end

  context "it should fail without email" do
    before { user.email = "" }
    it { should_not be_valid }
    specify { user.save.should == false }
  end

  context "it should fail without password" do
    before { user.password = "" }
    it { should_not be_valid }
    specify { user.save.should == false }
  end
end
