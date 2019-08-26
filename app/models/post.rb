class Post < ApplicationRecord
  validates :license_name, {presence: true}
  validates :holder_name, {presence: true}
  validates :date_of_license, {presence: true}  

  def self.search(search)
      if search
        Post.where(['license_name LIKE ?', "%#{search}%"])
      else
        Post.all
      end
  end

end
