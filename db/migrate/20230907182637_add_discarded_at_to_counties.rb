class AddDiscardedAtToCounties < ActiveRecord::Migration[7.0]
  def change
    add_column :counties, :discarded_at, :datetime
    add_index :counties, :discarded_at
  end
end
