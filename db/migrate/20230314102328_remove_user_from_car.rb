class RemoveUserFromCar < ActiveRecord::Migration[7.0]
  def change
    remove_reference :cars, :user, null: false, foreign_key: true
  end
end
