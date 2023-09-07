class AddDiscardedAtToSchoolClasses < ActiveRecord::Migration[7.0]
  def change
    add_column :school_classes, :discarded_at, :datetime
    add_index :school_classes, :discarded_at
  end
end
