class AddClientToPet < ActiveRecord::Migration[6.0]
  def change
    add_reference :pets, :client, foreign_key: true
  end
end
