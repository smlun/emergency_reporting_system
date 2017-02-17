class CreateEmergencies < ActiveRecord::Migration[5.0]
  def change
    create_table :emergencies do |t|
      t.string :subject
      t.string :category
      t.text :content

      t.timestamps
    end
  end
end
