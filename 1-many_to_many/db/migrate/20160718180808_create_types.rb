class CreateTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :types do |t|
      t.string :name
      t.string :weakness
      t.string :strength

      t.timestamps
    end
  end
end
