class CreateGos < ActiveRecord::Migration[5.2]
  def change
    create_table :gos do |t|

      t.timestamps
    end
  end
end
