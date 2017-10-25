class Post < ApplicationRecord
	validates :title, presence: true, length: { minimum: 5 }
	validates :body, :image, :author, presence: true
	belongs_to :author

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	def self.search(search)
  	where("title LIKE ?", "%#{search}%") 
	end

	extend FriendlyId
  	friendly_id :title, use: :slugged
end
