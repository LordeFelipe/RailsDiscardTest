class CreateScheduledExams < ActiveRecord::Migration[7.0]
  def change
    create_table :scheduled_exams do |t|
      t.date :date
      t.references :exam, null: false, foreign_key: true
      t.references :virtual_classroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
