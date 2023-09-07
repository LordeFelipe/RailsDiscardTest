class AddDiscardedAtToExams < ActiveRecord::Migration[7.0]
  def change
    add_column :exams, :discarded_at, :datetime
    add_index :exams, :discarded_at
  end
end
