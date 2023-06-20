class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  before_create :record_slug
  
  private

  def record_slug
    self.slug = (0...8).map { (65 + rand(26)).chr }.join
  end 
end
  