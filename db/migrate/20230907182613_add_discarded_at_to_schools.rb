class AddDiscardedAtToSchools < ActiveRecord::Migration[7.0]
  def change
    add_column :schools, :discarded_at, :datetime
    add_index :schools, :discarded_at
  end
end
