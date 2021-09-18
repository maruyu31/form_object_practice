class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :text
      t.integer :diary_id, null: false

      t.timestamps
    end
  end
end
