class CreateFruit < ActiveRecord::Migration
  def change
    create_table :fruits do |t|
      t.string :name
    end
  end
end
