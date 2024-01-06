class AddCatToAccounts < ActiveRecord::Migration[7.0]
  disable_ddl_transaction!

  def up
    add_column :accounts, :cat, :boolean
    change_column_default :accounts, :cat, false
  end

  def down
    remove_column :accounts, :cat
  end
end
