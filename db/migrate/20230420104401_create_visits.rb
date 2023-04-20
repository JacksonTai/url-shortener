class CreateVisits < ActiveRecord::Migration[7.0]
  def change
    create_table :visits do |t|
      t.string :originating_geolocation
      t.references :short_url, null: false, foreign_key: true

      t.timestamps
    end
  end
end
