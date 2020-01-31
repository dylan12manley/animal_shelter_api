class AddForiegnKeysToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :animals, :shelters
  end
end
