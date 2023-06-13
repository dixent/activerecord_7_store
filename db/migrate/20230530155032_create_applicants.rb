class CreateApplicants < ActiveRecord::Migration[7.0]
  def change
    create_table :applicants do |t|
      t.jsonb :settings, null: false, default: {}
      t.string :name
      t.timestamps
    end
  end
end
