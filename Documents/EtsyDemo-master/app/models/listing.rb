class Listing < ActiveRecord::Base
	   has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }, default_url: "noimage.jpg"
	   validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/,
	   					 :storage => :dropbox,
  						 :dropbox_credentials => Rails.root.join("config/dropbox.yml")

  		has_many :reviews
   						
end
