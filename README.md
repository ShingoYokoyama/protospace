##データベース設計

*prototypes
:title, :catchcopy, :concept, :user_id
*users
-:name, :group, :profile, :carrier, :avatar
*images
-:name, :status, :prototype_id, :status(enum) => main, sub
*likes
-:prototype_id, :user_id
*tags
-:text, :prototypes_id, :users_id

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
