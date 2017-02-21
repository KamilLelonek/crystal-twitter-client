require "json"

module Twitter
  class Tweet
    JSON.mapping({
      created_at:              { type: Time, converter: TimeFormat.new("%a %b %d %T +0000 %Y") },
      favorited:               { type: Bool                                                    },
      retweeted:               { type: Bool                                                    },
      truncated:               { type: Bool                                                    },
      favorite_count:          { type: Int32                                                   },
      retweet_count:           { type: Int32                                                   },
      id:                      { type: Int64                                                   },
      lang:                    { type: String                                                  },
      source:                  { type: String                                                  },
      text:                    { type: String                                                  },
      in_reply_to_screen_name: { type: String,        nilable: true                            },
      in_reply_to_status_id:   { type: Int32,         nilable: true                            },
      in_reply_to_user_id:     { type: Int32,         nilable: true                            },
      user:                    { type: Twitter::User, nilable: true                            },
    })
    def_equals id
  end
end
