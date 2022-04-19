# frozen_string_literal: true

class Hero < ApplicationRecord
  validates :name, presence: true, uniqueness: { scope: :token, case_sensitive: false }
  validates :token, presence: true, length: { minimum: 10, maximum: 100 }

  scope :by_token, ->(token) { where(token: token) }
  scope :sorted_by_name, -> { order(:name) }
  scope :search, lambda { |name|
    where('LOWER(name) LIKE ?', "%#{name.downcase}%") if name.present?
  }
end
