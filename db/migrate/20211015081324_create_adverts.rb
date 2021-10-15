class CreateAdverts < ActiveRecord::Migration[6.0]
  def change
    create_table :adverts do |t|
      t.string :title
      t.string :type
      t.string :address
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
