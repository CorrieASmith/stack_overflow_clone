class CreateAdmin < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      add_column :users, :admin, :boolean
    end
  end
end
