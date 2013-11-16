class CreateInfomercialIpsumRequests < ActiveRecord::Migration
  def change
    create_table :infomercial_ipsum_requests do |t|
      t.integer :number_of_paragraphs
      t.boolean :billy_mayes_mode

      t.timestamps
    end
  end
end
