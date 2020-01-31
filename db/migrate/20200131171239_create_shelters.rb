class CreateShelters < ActiveRecord::Migration[6.0]
  def change
    create_table :shelters do |t|
      t.column(:shelter_name, :string)
      t.column(:city, :string)
      t.column(:state, :string)
      t.column(:address, :string)
      t.column(:phone_number, :integer)
    end
  end
end
