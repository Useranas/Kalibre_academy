class Admin::LecturesController < ApplicationController

	def new
		# @lecture = Lecture.new
	end

	def create
		@lecture = Lecture.new(lecture_params)
		 if 
		 	
		 end
	end

	private

	def lecture_params
		params.require(:lecture).permit(:lecture_name, :lecture_standard, :course_id)
	end
end
