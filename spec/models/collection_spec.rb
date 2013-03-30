require 'spec_helper'

describe Collection do

  before(:each) do
    begin
      @collection = FactoryGirl.create(:collection1)
    rescue Exception => e
      puts e.backtrace
    end
  end

  subject { @collection }

  it { should respond_to(:title) }
  it { should respond_to(:intro_block) }
  it { should respond_to(:footer_block) }

  it { should have_many(:articles) }

end
