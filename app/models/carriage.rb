class Carriage < ActiveRecord::Base
	has_many :trains
	accepts_nested_attributes_for :trains, :reject_if => lambda { |a| a[:content].blank? }
end