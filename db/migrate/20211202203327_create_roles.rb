class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |a|
      a.string :character_name
    end
  end
end
