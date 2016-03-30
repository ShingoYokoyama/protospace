# データベース設計

1. prototypes br
  :title, :catchcopy, :concept, :user_id br
  has_many :comments, :dependent => :destroy br
  has_many :likes, :dependent => :destroy br
  has_many :upload_images, dependent => :destroy br
  belongs_to :user br
  acts_as_taggable_on :tags
2. users br
  :name, :group, :profile, :carrier, :avatar br
  has_many :prototypes br
  has_many :comments, :dependent => :destroy br
  has_many :likes, :dependent
3. upload_images br
  :name, :status, :prototype_id, :status(enum) => main, sub br
  belongs_to :prototype
4. likes br
  :prototype_id, :user_id br
  belongs_to :prototype br
  belongs_to :user
5. tags br
  acts-as-taggable-onを使用。
6. comments br
  :text, :user_id, prototype_id br
  belongs_to :user br
  belongs_to :prototype
