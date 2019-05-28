class AddHiddenToDeliverables < ActiveRecord::Migration[4.2]
  def change
    add_column :deliverables, :hidden, :boolean, :default => false
  end
end
