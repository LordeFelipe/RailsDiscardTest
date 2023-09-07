class AddDiscardedAtToVirtualClasrooms < ActiveRecord::Migration[7.0]
  def change
    add_column :virtual_classrooms, :discarded_at, :datetime
    add_index :virtual_classrooms, :discarded_at
  end
end
