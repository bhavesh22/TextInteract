class TextInteract < ApplicationRecord
	
	def self.split_in_points text_array
		splitted_array = text_array.split("\r\n")
		splitted_array_numbered = []
		splitted_array.each_with_index do |text_point, text_index|
			two_char  = text_point[0..2]
			text_point_formated = two_char.gsub(/\d+-/,"") + text_point[3..-1]
			splitted_array_numbered << (text_index+1).to_s + "- " + text_point_formated
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
