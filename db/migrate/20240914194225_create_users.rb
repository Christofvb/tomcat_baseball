class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :prenom
      t.string :nom
      t.integer :age
      t.string :adresse
      t.integer :code_postal
      t.string :ville
      t.timestamps
    end
  end
end
