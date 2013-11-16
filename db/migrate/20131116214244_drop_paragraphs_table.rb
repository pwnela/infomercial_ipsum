class DropParagraphsTable < ActiveRecord::Migration
  def change
    drop_table :paragraphs
  end
end
