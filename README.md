# Tables

1. prototypes  
  :title  
  :catchcopy  
  :concept  
  :user_id  

2. users  
  :name  
  :group  
  :profile  
  :carrier  
  :avatar  

3. upload_images  
  :name  
  :status  
  :prototype_id  
  :status(enum) [:main, :sub]  

4. likes  
  :prototype_id  
  :user_id   

5. tags  
  acts-as-taggable-onを使用。

6. comments  
  :text  
  :user_id  
  prototype_id  


# Association

1. prototype  
  has_many :comments, dependent: :destroy  
  has_many :likes, :depemdent => :destroy  
  has_many :upload_images, dependent: :destroy  
  belongs_to :user  
  acts_as_taggable_on :tags  

2. user  
  has_many :prototypes  
  has_many :comments, dependent: :destroy  
  has_many :likes, dependent: :destroy  

3. upload_image  
  belongs_to :prototype  

4. like  
  belongs_to :prototype  
  belongs_to :user  

5. comment  
  belongs_to :user  
  belongs_to :prototype

