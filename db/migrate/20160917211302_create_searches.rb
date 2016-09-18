class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :festival_name
      t.string :festival_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
