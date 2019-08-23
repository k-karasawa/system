class Post < ApplicationRecord
  validates :license_name, {presence: true}
  validates :holder_name, {presence: true}
  validates :date_of_license, {presence: true}  
end
