class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :title
      t.string :surname
      t.string :first_name
      t.string :second_name
      t.string :organisation
      t.string :department
      t.string :street
      t.string :zip
      t.string :country
      t.string :vat
      t.string :email
      t.string :mobile
      t.string :file

      t.timestamps
    end
  end
end
