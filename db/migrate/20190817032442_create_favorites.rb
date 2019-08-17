class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key:  { to_table: :users }
      t.references :like, foreign_key: { to_table: :microposts }

      t.timestamps
      t.index [:user_id, :like_id], unique: true
    end
  end
end