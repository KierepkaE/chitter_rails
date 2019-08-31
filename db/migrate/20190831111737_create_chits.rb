class CreateChits < ActiveRecord::Migration[6.0]
  def change
    create_table :chits do |t|
      t.text :chit

      t.timestamps
    end
  end
end
