class Book < ApplicationRecord

  has_secure_token
  belongs_to :publisher
end
