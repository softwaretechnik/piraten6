# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

Service.delete_all

Service.create hostname: 'www.piratenpartei.de',               description: 'Website der Piratenpartei Deutschland',    country: 'DE',           show: true
Service.create hostname: 'wiki.piratenpartei.de',              description: 'Wiki Piratenpartei Deutschland',           country: 'DE',           show: true
Service.create hostname: 'lqfb.piratenpartei.de',              description: 'LiquidFeedback Piratenpartei Deutschland', country: 'DE',           show: true
Service.create hostname: 'www.piratenpad.de',                  description: 'Freier Etherpad Server',                   country: 'DE',           show: true
Service.create hostname: 'www.piratenpartei-bayern.de',        description: 'Website des LV Bayern',                 country: 'DE', state: 'BY', show: true
Service.create hostname: 'www.piratenpartei-nrw.de',           description: 'Website des LV Nordrhein-Westfalen',    country: 'DE', state: 'NW', show: true
Service.create hostname: 'www.piratenpartei-sh.de',            description: 'Website des LV Schleswig-Holstein',     country: 'DE', state: 'SH', show: true
Service.create hostname: 'www.piratenpartei-bw.de',            description: 'Website des LV Baden-Württemberg',      country: 'DE', state: 'BW', show: true
Service.create hostname: 'www.piratenpartei-hessen.de',        description: 'Website des LV Hessen',                 country: 'DE', state: 'HE', show: true
Service.create hostname: 'www.piraten-rlp.de',                 description: 'Website des LV Rheinland-Pfalz',        country: 'DE', state: 'RP', show: true
Service.create hostname: 'www.piratenpartei-saarland.de',      description: 'Website des LV Saarland',               country: 'DE', state: 'SL', show: true
Service.create hostname: 'bremen.piratenpartei.de',            description: 'Website des LV Bremen',                 country: 'DE', state: 'HB', show: true
Service.create hostname: 'www.piratenpartei-hamburg.de',       description: 'Website des LV Hamburg',                country: 'DE', state: 'HH', show: true
Service.create hostname: 'www.piratenpartei-niedersachsen.de', description: 'Website des LV Niedersachsen',          country: 'DE', state: 'NI', show: true
Service.create hostname: 'berlin.piratenpartei.de',            description: 'Website des LV Berlin',                 country: 'DE', state: 'BE', show: true
Service.create hostname: 'www.piratenbrandenburg.de',          description: 'Website des LV Brandenburg',            country: 'DE', state: 'BB', show: true
Service.create hostname: 'www.piraten-sachsen.de',             description: 'Website des LV Sachsen',                country: 'DE', state: 'SN', show: true
Service.create hostname: 'www.piraten-lsa.de',                 description: 'Website des LV Sachsen-Anhalt',         country: 'DE', state: 'ST', show: true
Service.create hostname: 'piratenpartei-mv.de',                description: 'Website des LV Mecklenburg-Vorpommern', country: 'DE', state: 'MV', show: true
Service.create hostname: 'www.piraten-thueringen.de',          description: 'Website des LV Thüringen',              country: 'DE', state: 'TH', show: true

Service.update_addresses!

