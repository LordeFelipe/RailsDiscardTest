class AddDiscardedAtToScheduledExams < ActiveRecord::Migration[7.0]
  def change
    add_column :scheduled_exams, :discarded_at, :datetime
    add_index :scheduled_exams, :discarded_at
  end
end
