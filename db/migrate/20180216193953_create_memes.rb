class CreateMemes < ActiveRecord::Migration[5.1]
  def change
    create_table :memes do |t|
      t.string :image_url, null: false

      t.timestamps
    end
  end
end
