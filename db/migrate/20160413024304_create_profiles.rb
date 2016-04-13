class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true
      t.string :first_name
      t.string :last_name
      t.string :position
      t.text :summary
      t.string :mobile_phone
      t.string :telephone

      t.timestamps
    end
  end
end
