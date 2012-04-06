require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Enrycher do
  describe "process" do
    it "should take a string" do
      Enrycher.respond_to?(:process, "TEXT!").should eq true
    end
    
    it "should set the text variable"
    it "should make the HTTP request"
    
    describe "make request" do
      context "success!" do
        it "should return parsed XML"
      end

      context "failure!" do
        it "should return bupkis"
      end
    end
  end
  
  describe "print" do
    it "should probably do something more than print the parsed XML"
  end
end