class Listing < ActiveRecord::Base
    mount_uploader :image, ImageUploader
    
    validates :name, presence: true
    validates :description, presence: true
    validates :start_bid, presence: true, numericality: true,
              :format => { :with => /\A\d{1,6}(\.\d{0,2})?\z/ }
    
end
