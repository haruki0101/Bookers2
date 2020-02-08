class AddIntroductionToUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :introduction, :text
  end
end
