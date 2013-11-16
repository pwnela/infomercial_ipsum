class AddBillyMayesModeToPhrases < ActiveRecord::Migration
  def change
    add_column :phrases, :billy_mayes_mode, :boolean
  end
end
