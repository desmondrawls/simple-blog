class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author_name
      t.text :discussion
      t.integer :post_id

      t.timestamps
    end
  end
end
