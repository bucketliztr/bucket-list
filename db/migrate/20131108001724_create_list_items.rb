class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.text :name
      t.references :user, index: true

      t.timestamps
    end
  end
end
