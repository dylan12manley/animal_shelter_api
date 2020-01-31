class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.column(:name, :string)
      t.column(:species, :string)
      t.column(:breed, :string)
      t.column(:sex, :string)
      t.column(:age, :integer)
      t.column(:status, :string)
      t.column(:shelter_id, :integer)
    end
  end
end
