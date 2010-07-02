require 'spec_helper'

describe Screencast do
  describe "initializing" do
    before do
      @s = Screencast.new
    end
    
    describe "with invalid attributes" do
      it "should be invalid" do
        @s.should be_invalid
      end
      
      describe "aftering saving" do
        before do
          @s.save
        end
        
        it "should not be saved" do
          @s.should be_new_record
        end
        
        it "should have 3 errors" do
          @s.should have(3).errors
        end
        
        %w(number title url).each do |attr|
          it "should have error on #{attr.inspect}" do
            @s.should have(1).error_on(attr)
          end
        end
      end
    end
    
    describe "with valid attributes" do
      before do
        @s = Factory.build(:screencast)
      end
      
      it "should be valid" do
        @s.should be_valid
      end
      
      it "should save" do
        @s.save.should be_true
      end
    end
  end
  
  describe "existing" do
    before do
      @s = Factory(:screencast)
    end
    
    {
      'My New Screencast' => 'my-new-screencast',
      'Testing 123, Testing' => 'testing-123-testing',
      "John's Cool Title!" => 'johns-cool-title'
    }.each do |title, to_param|
      it "should have to_param when the title is #{title.inspect}" do
        @s.title = title
        @s.to_param.should == [@s.id, to_param].join('-')
      end
    end
  end
end