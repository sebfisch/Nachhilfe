class CreateInitialModel < ActiveRecord::Migration
    def change
        create_table :users do |t|
            t.string :name
            t.integer :class_level
            t.string :contact_info
            t.string :image_link
            t.date :last_activity
            t.boolean :is_admin
        end

        create_table :demands do |t|
            t.string :subject
            t.integer :class_level

            t.integer :user_id
        end

        create_table :offers do |t|
            t.string :subject
            t.integer :class_level
            t.float :pay
            t.text :info

            t.integer :user_id
        end

        create_table :appointments do |t|
            t.boolean :is_agreed
            t.boolean :is_positive

            t.integer :user_id
            t.integer :offer_id
        end
    end
end
