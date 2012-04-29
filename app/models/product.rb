class Product < ActiveRecord::Base
  default_scope :order => 'title'
  
  # Validations
  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :image_url, :format => {
    :with => %r{\.(gif|jpg|jpeg|png)$}i,
    :message => 'must be a URL for GIF, JPG, JPEG or PNG image.'}  
end
