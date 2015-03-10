require "json"

module Twitter
  class User
    json_mapping({
      created_at:                         { type: Time, converter: TimeFormat.new("%a %b %d %T +0000 %Y") },
      contributors_enabled:               { type: Bool                                                    },
      default_profile:                    { type: Bool                                                    },
      default_profile_image:              { type: Bool                                                    },
      follow_request_sent:                { type: Bool                                                    },
      following:                          { type: Bool                                                    },
      geo_enabled:                        { type: Bool                                                    },
      is_translation_enabled:             { type: Bool                                                    },
      is_translator:                      { type: Bool                                                    },
      notifications:                      { type: Bool                                                    },
      profile_background_tile:            { type: Bool                                                    },
      profile_use_background_image:       { type: Bool                                                    },
      verified:                           { type: Bool                                                    },
      lang:                               { type: String                                                  },
      location:                           { type: String                                                  },
      name:                               { type: String                                                  },
      profile_background_color:           { type: String                                                  },
      profile_background_image_url:       { type: String                                                  },
      profile_background_image_url_https: { type: String                                                  },
      profile_image_url:                  { type: String                                                  },
      profile_image_url_https:            { type: String                                                  },
      profile_link_color:                 { type: String                                                  },
      profile_sidebar_border_color:       { type: String                                                  },
      profile_sidebar_fill_color:         { type: String                                                  },
      profile_text_color:                 { type: String                                                  },
      screen_name:                        { type: String                                                  },
      favourites_count:                   { type: Int32                                                   },
      followers_count:                    { type: Int32                                                   },
      friends_count:                      { type: Int32                                                   },
      listed_count:                       { type: Int32                                                   },
      statuses_count:                     { type: Int32                                                   },
      id:                                 { type: Int64                                                   },
      needs_phone_verification:           { type: Bool,           nilable: true                           },
      suspended:                          { type: Bool,           nilable: true                           },
      profile_banner_url:                 { type: String,         nilable: true                           },
      profile_location:                   { type: String,         nilable: true                           },
      time_zone:                          { type: String,         nilable: true                           },
      url:                                { type: String,         nilable: true                           },
      utc_offset:                         { type: Int32,          nilable: true                           },
      status:                             { type: Twitter::Tweet, nilable: true                           },
    })
    def_equals id
  end
end
