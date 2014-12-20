class Art < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("author like ?", "%#{query}%")
  end
end