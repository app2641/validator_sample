class User < ApplicationRecord
  validates_with MatzNameValidator
end
