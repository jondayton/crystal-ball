class CreateFortunes < ActiveRecord::Migration
  def change
    create_table :fortunes do |t|
      t.string :message

      t.timestamps null: false
    end
  end
end
