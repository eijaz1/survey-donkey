class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gender"
    t.integer  "age"
    t.string   "location"
    t.string   "ethnicity"
    t.string   "religion"
    t.string   "party_affiliation"
    t.string   "answer1"
    t.string   "answer2"
    t.string   "answer3"
    t.string   "answer4"
    t.string   "answer5"
    t.string   "answer6"
    end 
  end
end
