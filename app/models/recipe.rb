class Recipe < ApplicationRecord

	has_many :ingredients, dependent: :destroy
	has_many :instructions, dependent: :destroy

	mount_uploader :cover_photo, PhotoUploader

	acts_as_ordered_taggable

	include Handleizer

	accepts_nested_attributes_for :ingredients
	accepts_nested_attributes_for :instructions
end
