class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.text :photo
      t.string :title
      t.string :subtitle
      t.text :body

      t.timestamps
    end
  end
end
