class Carriage < ActiveRecord::Base
	has_many :trains
	accepts_nested_attributes_for :trains
end