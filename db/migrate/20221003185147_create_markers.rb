class CreateMarkers < ActiveRecord::Migration[7.0]
  def change
    create_table :markers do |t|
      t.string :marker
      t.string :platform
      t.string :frequency
      t.string :livemetrics
      t.string :customerimpact
      t.string :description

      t.timestamps
    end
  end
end
