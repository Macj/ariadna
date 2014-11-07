class Picture < ActiveRecord::Base
  belongs_to :albom
  has_attached_file :image, :styles => {:full => "600x600",:medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/pictures/:style/missing.png"
end
