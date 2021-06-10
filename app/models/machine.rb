class Machine < ApplicationRecord

  validates :title, presence: true
  validates :link, presence: true
  validates :description, presence: true
  validates :author, presence: true
end
