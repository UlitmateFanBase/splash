class AddMarketingFlagToUsers < ActiveRecord::Migration
  def change
    add_column :users, :marketer, :boolean, default: false
  end
end
