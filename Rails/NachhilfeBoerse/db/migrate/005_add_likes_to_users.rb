class AddLikesToUsers < ActiveRecord::Migration
    def change
        add_column :users, :likes, :integer
        remove_column :appointments, :is_positive
        add_column :appointments, :was_liked, :boolean
    end
end