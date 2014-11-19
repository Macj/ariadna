class Article < ActiveRecord::Base
  has_attached_file :photo, :styles => {:full => "600x600",:medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/article/:style/missing.png"
end
