class TextInteract < ApplicationRecord
	
	def self.split_in_points text_array
		splitted_array = text_array.split("\r\n")
		splitted_array_numbered = []
		splitted_array.each_with_index do |text_point, text_index|
			splitted_array_numbered << (text_index+1).to_s + "- " + text_point
		end
		return splitted_array_numbered
	end

	def self.removing_numbers text_array
		splitted_array_numbered = text_array.split("\r\n")
		text_array_un_numbered = []
		splitted_array_numbered.each do |text_point|
			text_array_un_numbered << text_point.split("-")[1][1..-1]
		end
		return text_array_un_numbered
	end
end
