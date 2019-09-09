class Employee < ApplicationRecord

    validates :j_code, {presence: true, uniqueness: true}
    validates :name, {presence: true}
    validates :department, {presence: true}
    validates :section, {presence: true}
    validates :join_date, {presence: true}
    validates :division, {presence: true}
    validates :date_of_birth, {presence: true}
    validates :blood_type, {presence: true}
    validates :address, {presence: true}
    validates :phone1, {presence: true}
    validates :phone2, {presence: true}
end
