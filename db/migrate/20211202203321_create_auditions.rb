class CreateAuditions < ActiveRecord::Migration[5.2]
  def change
    create_table :auditions do |a|
      a.string :actor
      a.string :location
      a.integer :phone
      a.boolean :hired, default: false
      a.references :role
    end
  end
end
