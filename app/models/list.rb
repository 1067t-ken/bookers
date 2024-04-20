class List < ApplicationRecord
  validates :title, presence: { message: "[error] Title can't be blank" }
  validates :body, presence: { message: "[error] Body can't be blank" }
end
