class Admin::CoursesController < ApplicationController

	def new
		@course = Course.new
	end

	def create
		@course = Course.create(course_param)
    redirect_to admin_dashboard_index_path
    flash[:notice] = "Course has been successfully created!"
	end

	private

	def course_param
	 	params.require(:course).permit(:course_title, :standard_type)
	end
end
