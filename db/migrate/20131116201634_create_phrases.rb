class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.text :phrase_text

      t.timestamps
    end
  end
end
