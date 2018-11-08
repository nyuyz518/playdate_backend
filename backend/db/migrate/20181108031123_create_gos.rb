class CreateGos < ActiveRecord::Migration[5.2]
  def change
    create_table :gos do |t|
      t.references :event, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
