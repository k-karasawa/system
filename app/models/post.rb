class Post < ApplicationRecord
  validates :license_name, {presence: true}
  validates :holder_name, {presence: true}
  validates :date_of_license, {presence: true}  


  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Post.where(['license_name LIKE ?', "%#{search}%"])
    else
      Post.all #全て表示。
    end
  end
  
end
