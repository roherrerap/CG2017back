class Quote < ApplicationRecord
  belongs_to :user
  has_many :productquotes
end
