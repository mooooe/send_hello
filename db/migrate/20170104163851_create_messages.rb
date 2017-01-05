class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :format_id
      t.text    :text
      t.text    :image
      t.string  :receiver
      t.integer :receiver_id

      t.timestamps
    end
  end
end
