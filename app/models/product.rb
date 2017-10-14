class Product < ApplicationRecord
  has_many :productquotes
  has_many :productquoteunregis
end
