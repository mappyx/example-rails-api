class Contact < ApplicationRecord
    include ActiveModel::Validations
    attr_accessor :fullname, :phone_number, :users_id
    validates :name, :phone_number, :users_id, presence: true
end
