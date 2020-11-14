class ChangeOppoId < ActiveRecord::Migration[6.0]
  def change
    change_column :opportunities, :oppo_id, :string
  end
end
