# data base design

## overview
*users can send greeting cards to other users and share the links
*users can choose a greeting card from several choices
*users can reply to other users

## tables

### users
|user_name|
|:---:|
|string|

### messages
|user_id|format_id|text|image|user_name|user_name_id|
|:---:|:---:|:---:|:---:|:---:|:---:|
|integer|integer|text|text|string|integer|

### replies
|user_id|message_id|text|user_name|
|:---:|:---:|:---:|:---:|
|integer|integer|text|string|

### formats
|name|
|:---:|
|string|

## association
### users
* has_many :messages
* has_many :replies

### message
* belongs_to :user
* belongs_to :format
* has_many :replies

###replies
* belongs_to :user
* belongs_to :message

### formats
* has_many :messages
