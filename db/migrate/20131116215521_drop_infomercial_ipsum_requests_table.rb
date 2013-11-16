class DropInfomercialIpsumRequestsTable < ActiveRecord::Migration
  def up
    drop_table :infomercial_ipsum_requests
  end
end
