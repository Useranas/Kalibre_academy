class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :course_title
      t.string :standard_type

      t.timestamps
    end
  end
end
