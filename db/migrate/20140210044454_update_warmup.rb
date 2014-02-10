class UpdateWarmup < ActiveRecord::Migration
  def change
    add_column :warmups, :example, :string
    change_column :warmups, :movement, :text
  end
end
