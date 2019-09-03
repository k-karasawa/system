class License < ApplicationRecord

    validates :license_name, {presence: true, uniqueness: true}
    validates :expiration, {presence: true}
    validates :surveillance, {presence: true}
    validates :S_recommendation, {presence: true}
    validates :J_recommendation, {presence: true}
    
end
