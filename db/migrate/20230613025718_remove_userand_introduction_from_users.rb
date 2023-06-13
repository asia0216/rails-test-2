class RemoveUserandIntroductionFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :user, :string
    remove_column :users, :introduce, :text
  end
end
