class CreateFirstNames < ActiveRecord::Migration[5.1]
  def change
    create_table :first_names do |t|
      t.string :last_name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
