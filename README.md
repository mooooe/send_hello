# data base design

## overview
*users can send greeting cards to other users and share the links
*users can choose a greeting card from several choices
*users can reply to other users

## tables

### users
|user_name|
|:---:|
|varchar|

### messages
|user_id|format_id|text|image|user_name|
|:---:|:---:|:---:|:---:|:---:|
|integer|integer|text|text|varchar|

### replies
|user_id|message_id|text|user_name|
|:---:|:---:|:---:|:---:|
|integer|integer|text|varchar|

### formats
|name|
|:---:|
|varchar|

## association
### users
* has_many :messages
* has_many :replies

### message
* belongs_to :user
* has_many :replies

###replies
* belongs_to :user
* belongs_to :message

### formats
* has_many :messages
