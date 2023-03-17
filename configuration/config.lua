local seconds, minutes = 1000, 60000
Config = {}

Config.Icon = '' --| Target icon
Config.Models = { --| Peds to stroke
    'a_c_cat_01',
    'a_c_chop',
    'a_c_husky',
    'a_c_retriever',
    'a_c_pug',
    'a_c_poodle',
    'a_c_rottweiler',
    'a_c_shepherd',
    'a_c_westy'
}

Config.Anim = {
    time = 5 * seconds, --| Animation time
    lib = 'machinic_loop_mechandplayer', --| Animation lib
    dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@' --| Animation dict
}