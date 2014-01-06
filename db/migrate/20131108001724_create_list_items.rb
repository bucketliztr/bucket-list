class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.text :content
      t.references :user, index: true

      t.timestamps
    end
  end
end
