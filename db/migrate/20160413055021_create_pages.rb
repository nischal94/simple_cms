class CreatePages < ActiveRecord::Migration
  #def change
    #create_table :pages do |t|

      #t.timestamps null: false
    #end

  def up
    create_table :pages do |t|
      t.integer "subject_id"
      #same as: t.references :subject
      t.string "name"
      t.string "permalink"#speedup lookup process
      t.integer "position"
      t.boolean "visible", :default => false
    end

  add_index("pages", "subject_id")
  add_index("pages", "permalink")
    end

  def down
    drop_table :pages
  end
end
