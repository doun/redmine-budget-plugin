class AddHiddenToDeliverables < ActiveRecord::Migration
  def change
    add_column :hidden, :boolean, :default => false
  end
end
