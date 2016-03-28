# データベース設計

1. prototypes
  :title, :catchcopy, :concept, :user_id
2. users
  :name, :group, :profile, :carrier, :avatar
3. images
  :name, :status, :prototype_id, :status(enum) => main, sub
4. likes
  :prototype_id, :user_id
5. tags
  :text, :prototypes_id, :users_id
