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


# Berliner
#
#
%w(
  www.piratenpartei-charlottenburg-wilmersdorf.de Charlottenburg-Wilmersdorf
  piraten-friedrichshain-kreuzberg.de Friedrichshain-Kreuzberg
  piraten-lichtenberg.de Lichtenberg
  piratenpartei-marzahn-hellersdorf.de Marzahn-Hellersdorf
  piraten-mitte.de Mitte
  piratenpartei-pankow.de Pankow
  www.piratenpartei-reinickendorf.de Reinickendorf
  piraten-spandau.de Spandau
  piraten-steglitz-zehlendorf.de Steglitz-Zehlendorf
  piraten-tempelhof-schoeneberg.de Tempelhof-Schöneberg
  piratenpartei-treptow-koepenick.de Treptow-Köpenick
).each_slice(2) do |host, descr|
  Service.create hostname: host, description: descr, country: 'DE', state: 'BE', show: true
end

# Brandenburg
%w(
    www.piraten-potsdam.de
  brb.piratenbrandenburg.de
  hvl.piratenbrandenburg.de
  mol.piratenbrandenburg.de
  ohv.piratenbrandenburg.de
  pm.piratenbrandenburg.de
  barum.piratenbrandenburg.de
  dos.piratenbrandenburg.de
  cottbus.piratenbrandenburg.de
).each do |host|
  Service.create hostname: host, description: "-", country: 'DE', state: 'BB', show: true
end

# Bayern BZ
%w(
  piraten-mfr.de
  piraten-ufr.de
  piraten-oberfranken.de
  oberpfalz.piratenpartei.de
  oberbayern.piratenpartei.de
  www.piraten-schwaben.de
).each do |host|
  Service.create hostname: host, description: "-", country: 'DE', state: 'BY', show: true
end


%w(
  piraten-kempten.de
  piraten-as.de
  piraten-bgl.de
  ebersberg.piratenpartei.de
  piraten-landsberg.de
  piraten-erlangen.de
  piratenpartei-freising.de
  piraten-fuerth.de
  www.piratenpartei-ingolstadt.de
  piratenpartei-neu-ulm.de
  piratenpartei-muenchen.de
  piraten-nbg.de
  piraten-nuernberger-land.de
  piraten-paf.de
  piraten-bamberg.de
  piraten-ansbach.de
  piraten-coburg.de
  piraten-aichach-friedberg.de
).each do |host|
  Service.create hostname: host, description: "-", country: 'DE', state: 'BY', show: true
end




Service.update_addresses!

