require 'spec_helper'

describe TitledImage do

  before(:each) do
    @titled_image = FactoryGirl.create(:titled_image1)
  end

  it { should belong_to(:image_set) }

  it 'should test crop_file' do
    @titled_image.crop_file.should == @titled_image.image_set.path + '/fromthepage/images/working/1/img_3556_crop.jpg'
  end

  describe 'original_file tests' do
    # the method will either return the variable or 
    let(:orig_file) { '/fromthepage/images/working/1/img_3556.jpg' }
        
    it 'sends false' do
      # orig_file = @titled_image.original_file
      @titled_image.original_file(false).should == @titled_image.image_set.path + orig_file
    end

    it 'sends true' do
      @titled_image.original_file(true).should == orig_file
    end
    
    it 'calls original_file with image_set.path as nil' do
      @titled_image.image_set.path = nil
      @titled_image.original_file().should == orig_file
    end

  end

end
