class Message < ApplicationRecord
has_many :comments, dependent: :destroy
belongs_to :user
validates :title, presence: true, length: { minimum: 5, maximum: 100 }
validates :description, presence: true, length: { minimum: 10, maximum: 500 }
end
