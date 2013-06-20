class Post < ActiveRecord::Base

  attr_accessible :title, :body, :image
  image_accessor :image

  def full_info
    title + ' ' +  body
  end


end
