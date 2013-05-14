class Post < ActiveRecord::Base

  attr_accessible :title, :body

  def full_info
    title + ' ' +  body
  end

end
