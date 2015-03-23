class CreateFlashCards < ActiveRecord::Migration
  def change
    create_table :flash_cards do |t|
      t.string :word
      t.string :meaning
      t.string :pronunciation
      t.string :language

      t.timestamps
    end
  end
end
