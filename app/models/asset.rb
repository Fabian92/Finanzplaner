class Asset < ActiveRecord::Base
	belongs_to :user
	has_attached_file :asset, :styles => { :large => "640x480", :medium => "300x300", :thumb => "100x100"}
  #attr_accessible :asset_contet_type, :asset_file_name, :asset_file_size, :asset_updated_at, :user_id
end
