class Post < ActiveRecord::Base

 searchable do
    text :title, :content
    end

  belongs_to :user
  attr_accessible :content, :lifespan, :title, :tag_list
  acts_as_taggable
  
  
  validates :title, :content, :lifespan, :presence => true
  validates :lifespan, :numericality => { :only_integer => true , :greater_than_or_equal_to => 5, :less_than_or_equal_to => 25}
end
