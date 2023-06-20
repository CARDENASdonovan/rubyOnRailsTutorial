class Article < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :slug, presence: true
  validates :user_id, presence: true

  before_validation :record_slug
  
  private

  def record_slug
    self.slug = (0...8).map { (65 + rand(26)).chr }.join
  end
end
