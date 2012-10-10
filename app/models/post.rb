class Post < ActiveRecord::Base

 searchable do
    text :title, :content
    end

  belongs_to :user
  attr_accessible :content, :lifespan, :title
end
