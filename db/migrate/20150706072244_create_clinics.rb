class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
    	t.string :rank
    	t.string :name
    	t.string :phone
      t.timestamps null: false
    end
  end
end
