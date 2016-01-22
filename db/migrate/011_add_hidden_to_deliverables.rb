class AddHiddenToDeliverables < ActiveRecord::Migration
  def change
    add_column :deliverables, :hidden, :boolean, :default => false
  end
end
