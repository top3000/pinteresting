class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

	# makes add pin's description a required field
	validates :description, :presence => true
	# makes add pin's image a required field
	validates :image, :presence => true
end
