class Post < ApplicationRecord
  validates :license_name, {presence: true}
  validates :holder_name, {presence: true}
  validates :date_of_license, {presence: true}  


  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Project.where(['name LIKE ?', "%#{search}%"])
    else
      Project.all #全て表示。
    end
  end
  
end
