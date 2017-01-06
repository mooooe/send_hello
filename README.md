# data base design

## overview
*users can send greeting cards to other users and share the links
*users can choose a greeting card from several choices
*users can reply to other users

## tables

### users
|nickname|
|:---:|
|string|

### messages
|user_id|format_id|text|image|nickname|nickname_id|
|:---:|:---:|:---:|:---:|:---:|:---:|
|integer|integer|text|text|string|integer|

### replies
|user_id|message_id|text|nickname|
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
