class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.belongs_to :school_classes

      t.timestamps null: false
    end
  end
end
