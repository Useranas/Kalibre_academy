class CreateLectures < ActiveRecord::Migration[5.1]
  def change
    create_table :lectures do |t|
      t.string :lecture_description
      t.string :lecture_name
      t.string :lecture_standard
      t.belongs_to :course, index: true, foreign_key: true
      t.timestamps
    end
  end
end