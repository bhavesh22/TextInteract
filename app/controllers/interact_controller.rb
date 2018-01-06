class InteractController < ApplicationController

	def show
	end

	def text_import
	end

	def text_import_post
	end

	def box_interact
		# @text_array = TextInteract.removing_numbers(params[:text_input])
		text_array = params[:text_input]
		@text_array = text_array.split("\r\n")
	end

	def window2
		text_array = params[:text_input]
		@text_array_numbered = TextInteract.split_in_points(text_array)
		@text_message = ""
		@text_array_numbered.each do |text|
			@text_message << text + "\n"
		end
	end

	def window3
	end

	def generate_text_file
	end

end
