class CreateOpportunities < ActiveRecord::Migration[6.0]
  def change
    create_table :opportunities do |t|
      t.string :objective
      t.text :details
      t.integer :oppo_id
      t.string :slug
      t.string :compensation

      t.timestamps
    end
  end
end
