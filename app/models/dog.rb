class Dog < ApplicationRecord
  belongs_to :owner
  belongs_to :breed
end
