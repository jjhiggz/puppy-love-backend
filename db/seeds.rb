# # This file is auto-generated from the current state of the database. Instead
# # of editing this file, please use the migrations feature of Active Record to
# # incrementally modify your database, and then regenerate this schema definition.
# #
# # This file is the source Rails uses to define your schema when running `rails
# # db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# # be faster and is potentially less error prone than running all of your
# # migrations from scratch. Old migrations may fail to apply correctly if those
# # migrations use external dependencies or application code.
# #
# # It's strongly recommended that you check this file into your version control system.

# ActiveRecord::Schema.define(version: 2020_03_23_165700) do

#   create_table "dogs", force: :cascade do |t|
#     t.string "picture"
#     t.string "breed"
#     t.string "name"
#     t.boolean "friendly_w_kids"
#     t.boolean "energetic"
#     t.boolean "fixed"
#     t.boolean "cats"
#     t.boolean "dogs"
#     t.boolean "status"
#     t.integer "user_id", null: false
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.text "bio"
#     t.index ["user_id"], name: "index_dogs_on_user_id"
#   end


#   create_table "users", force: :cascade do |t|
#     t.string "name"
#     t.integer "age"
#     t.text "profile_description"
#     t.string "img"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end
lorem_ipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
img = "https://scontent.ftpa1-1.fna.fbcdn.net/v/t1.0-9/25594209_10214604668497600_4577501200942264233_n.jpg?_nc_cat=101&_nc_sid=7aed08&_nc_ohc=BvHoGlYOKUYAX8YuxiJ&_nc_ht=scontent.ftpa1-1.fna&oh=72b1c6cbda50f415d28e42d9c25ba211&oe=5E9F3425"

Dog.destroy_all
User.destroy_all

user1 = User.create(name:"jon", age:5, profile_description:"description 1"+lorem_ipsum, img:img )
user2 = User.create(name:"jonn", age:55, profile_description:"description 2"+lorem_ipsum, img:img )
user3 = User.create(name:"jonnn", age:555, profile_description:"description 3"+lorem_ipsum, img:img )

dogpic1 ='https://thehappypuppysite.com/wp-content/uploads/2018/10/dapple-dachshund-long.jpg'
dogpic2 = 'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/16105011/English-Cocker-Spaniel-Slide03.jpg'
dogpic3 ='https://www.anythinglabrador.com/wp-content/uploads/2019/03/Black-Labrador-Retriever.jpg'

Dog.create(picture:dogpic1, breed:"datsun", name:"uglyass", friendly_w_kids:false, energetic:false, fixed:true, cats:true, dogs:false, status:false, user:user1, bio:lorem_ipsum)

Dog.create(picture:dogpic2, breed:"German Shepherd", name:"Kona", friendly_w_kids:true, energetic:true, fixed:true, cats:true, dogs:false, status:false, user:user2, bio:lorem_ipsum)

Dog.create(picture:dogpic3, breed:"German Shepherd", name:"Nyla", friendly_w_kids:true, energetic:false, fixed:true, cats:false, dogs:false, status:false, user:user1, bio:lorem_ipsum)

Dog.create(picture:dogpic2, breed:"Golden Retriever", name:"Foofer", friendly_w_kids:false, energetic:false, fixed:true, cats:true, dogs:false, status:false, user:user3, bio:lorem_ipsum)

Dog.create(picture:dogpic1, breed:"human dog hybrid", name:"nina", friendly_w_kids:false, energetic:false, fixed:true, cats:true, dogs:false, status:false, user:user2, bio:lorem_ipsum)

#   create_table "dogs", force: :cascade do |t|
#     t.string "picture"
#     t.string "breed"
#     t.string "name"
#     t.boolean "friendly_w_kids"
#     t.boolean "energetic"
#     t.boolean "fixed"
#     t.boolean "cats"
#     t.boolean "dogs"
#     t.boolean "status"
#     t.integer "user_id", null: false
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.text "bio"
#     t.index ["user_id"], name: "index_dogs_on_user_id"
#   end

#   add_foreign_key "dogs", "users"
# end