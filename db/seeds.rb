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

Service.create hostname: 'www.piratenpartei.de',               description: 'Website der Piratenpartei Deutschland',    country: 'DE',              show: true
Service.create hostname: 'wiki.piratenpartei.de',              description: 'Wiki Piratenpartei Deutschland',           country: 'DE',              show: true
Service.create hostname: 'lqfb.piratenpartei.de',              description: 'LiquidFeedback Piratenpartei Deutschland', country: 'DE',              show: true
Service.create hostname: 'www.piratenpad.de',                  description: 'Freier Etherpad Server',                   country: 'DE',              show: true
Service.create hostname: 'www.junge-piraten.de',               description: 'JuPis',                                    country: 'DE',              show: true
Service.create hostname: 'www.piratenpartei-bayern.de',        description: 'Website des LV Bayern',                    country: 'DE', state: 'BY', show: true
Service.create hostname: 'www.piratenpartei-nrw.de',           description: 'Website des LV Nordrhein-Westfalen',       country: 'DE', state: 'NW', show: true
Service.create hostname: 'www.piratenpartei-sh.de',            description: 'Website des LV Schleswig-Holstein',        country: 'DE', state: 'SH', show: true
Service.create hostname: 'www.piratenpartei-bw.de',            description: 'Website des LV Baden-Württemberg',         country: 'DE', state: 'BW', show: true
Service.create hostname: 'www.piratenpartei-hessen.de',        description: 'Website des LV Hessen',                    country: 'DE', state: 'HE', show: true
Service.create hostname: 'www.piraten-rlp.de',                 description: 'Website des LV Rheinland-Pfalz',           country: 'DE', state: 'RP', show: true
Service.create hostname: 'www.piratenpartei-saarland.de',      description: 'Website des LV Saarland',                  country: 'DE', state: 'SL', show: true
Service.create hostname: 'bremen.piratenpartei.de',            description: 'Website des LV Bremen',                    country: 'DE', state: 'HB', show: true
Service.create hostname: 'www.piratenpartei-hamburg.de',       description: 'Website des LV Hamburg',                   country: 'DE', state: 'HH', show: true
Service.create hostname: 'www.piratenpartei-niedersachsen.de', description: 'Website des LV Niedersachsen',             country: 'DE', state: 'NI', show: true
Service.create hostname: 'berlin.piratenpartei.de',            description: 'Website des LV Berlin',                    country: 'DE', state: 'BE', show: true
Service.create hostname: 'www.piratenbrandenburg.de',          description: 'Website des LV Brandenburg',               country: 'DE', state: 'BB', show: true
Service.create hostname: 'www.piraten-sachsen.de',             description: 'Website des LV Sachsen',                   country: 'DE', state: 'SN', show: true
Service.create hostname: 'www.piraten-lsa.de',                 description: 'Website des LV Sachsen-Anhalt',            country: 'DE', state: 'ST', show: true
Service.create hostname: 'piratenpartei-mv.de',                description: 'Website des LV Mecklenburg-Vorpommern',    country: 'DE', state: 'MV', show: true
Service.create hostname: 'www.piraten-thueringen.de',          description: 'Website des LV Thüringen',                 country: 'DE', state: 'TH', show: true


# BaWü BzV BW
#
%w(
  piraten-bzv-stuttgart.de
  bzv.piratenpartei-tuebingen.de
  bzv-karlsruhe.piraten-bw.de
  bzv-fr.piratenpartei-bw.de
).each do |host|
  Service.create hostname: host, description: "-", country: 'DE', state: 'BW', show: true
end

# BaWü KVs BW
#
%w(
  piraten-rvfn.de
  piratenpartei-reutlingen-tuebingen.de
  piratenpartei-ludwigsburg.de
  piraten-konstanz.de
  piraten-rastatt.de
  piratenpartei-heilbronn.de
  piratenpartei-stuttgart.de
  piraten-rnhd.de
  piraten-ka-land.de
  piraten-hdh.de
  piratenpartei-ulm.de
).each do |host|
  Service.create hostname: host, description: "-", country: 'DE', state: 'BW', show: true
end

# Berlin BE
%w(
  www.piratenpartei-charlottenburg-wilmersdorf.de Charlottenburg-Wilmersdorf
  piraten-friedrichshain-kreuzberg.de Friedrichshain-Kreuzberg
  piraten-lichtenberg.de Lichtenberg
  piratenpartei-marzahn-hellersdorf.de Marzahn-Hellersdorf
  fraktion.piraten-mahe.de BVV-Fraktion-Marzahn-Hellersdorf
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

# Brandenburg BB
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

# Bayern BY
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

# Bayern KV
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

# Bremen KV
#

%w(
  piraten-bremerhaven.de

).each do |host|
  Service.create hostname: host, description: "-", country: 'DE', state: 'HB', show: true
end

# Hamburg


# Hessen KV
%w(
  piraten-bergstrasse.de
  piratenpartei-darmstadt.de
  piratenpartei-frankfurt.de
  piratenpartei-giessen.de
  piratenpartei-gross-gerau.de
  piratenpartei-hochtaunus.de
  piraten-kassel.de
  kinzigpiraten.de
  piraten-mtk.de
  piratenpartei-marburg.de
  kreispiraten-of.de
  piratenpartei-rtk.de
  piraten-sek.de
  piraten-waldeck-frankenberg.de
  piratenpartei-wetterau.de
  piratenpartei-wiesbaden.de

).each do |host|
  Service.create hostname: host, description: "-", country: 'DE', state: 'HE', show: true
end

# Hessen
%w(
  piraten-bergstrasse.de
  piratenpartei-darmstadt.de
  piratenpartei-frankfurt.de
  piratenpartei-giessen.de
  piratenpartei-gross-gerau.de
  piratenpartei-hochtaunus.de
  piraten-kassel.de
  kinzigpiraten.de
  piraten-mtk.de
  piratenpartei-marburg.de
  kreispiraten-of.de
  piratenpartei-rtk.de
  piraten-sek.de
  piraten-waldeck-frankenberg.de
  piratenpartei-wetterau.de
  piratenpartei-wiesbaden.de
).each do |host|
  Service.create hostname: host, description: "-", country: 'DE', state: 'HE', show: true
end

# MV
%w(
  piraten-usedom.de
  www.schweriner-piraten.de
  piraten-hgw.de
).each do |host|
  Service.create hostname: host, description: "-", country: 'DE', state: 'MV', show: true
end

# NI
%w(
  piratenpartei-oldenburg.de
  piratenpartei-braunschweig.de
  heide-piraten.de
  piratenhannover.de
  piraten-stade.de
  piratenpartei-delmenhorst.de
  piraten-hameln.de
  piratenpartei-hildesheim.de
  piraten-osnabrueck.de
  piratenpartei-wolfenbuettel.de
  piraten-whv.de
  piratenpartei-wolfsburg.de
).each do |host|
  Service.create hostname: host, description: "-", country: 'DE', state: 'NI', show: true
end

# NRW

%w(
  piratenpartei-aachen.de
  piratenbochum.de
  piratenpartei-bonn.de
  piratenpartei-wermelskirchen.de
  piratenpartei-lippe.de
  piratenpartei-dortmund.de
  piratenpartei-duesseldorf.de
  piratenpartei-duisburg.de
  piratenpartei-essen.de
  piratenpartei-kleve.de
  piratenpartei-gelsenkirchen.de
  piratenpartei-gladbeck.de
  piraten-hagen.de
  piratenpartei-hamm.de
  piratenpartei-guetersloh.de
  piratenpartei-iserlohn.de
  piratenpartei-koeln.de
  piratenpartei-soest.de
  piratenpartei-minden.de
  piraten-kreiswesel.de
  piratenpartei-marl.de
  piratenpartei-muenster.de
  neusser-piraten.de
  piratenpartei-bocholt.de
  piratenpartei-olpe.de
  piratenpartei-owl.de
  piraten-bergisches-land.de
  piratenpartei-recklinghausen.de
  piratenpartei-rhein-sieg.de
  piratenpartei-rbk.de
  piratenpartei-bergisch-gladbach.de
  piratenpartei-burscheid.de
  piratenpartei-kuerten.de
  piratenpartei-leichlingen.de
  piratenpartei-odenthal.de
  piratenpartei-overath.de
  piratenpartei-roesrath.de
  piratenpartei-paderborn.de
  piraten-kreis-unna.de
  piratenpartei-siegen.de
  piratenpartei-warendorf.de
).each do |host|
  Service.create hostname: host, description: "-", country: 'DE', state: 'NW', show: true
end

# RLP KV
%w(
  piratenpartei-koblenz.de
  www.piraten-mittelhaardt.de
  piraten-rp.de
  piraten-trier.de
).each do |host|
  Service.create hostname: host, description: "-", country: 'DE', state: 'RP', show: true
end

# Saarland SL
%w(

).each do |host|
  Service.create hostname: host, description: "-", country: 'DE', state: 'SL', show: true
end


# Sachsen SN
%w(
  piraten-leipzig.de
  piraten-chemnitz.de
  piraten-goerlitz.de
  piraten-dresden.de
  piraten-erzgebirge.de
  piraten-soe.de
  piraten-bautzen.de
  piratenpartei-vogtland.de
).each do |host|
  Service.create hostname: host, description: "-", country: 'DE', state: 'SN', show: true
end

# Sachsen-Anhalt ST
%w(
  www.piraten-altmark.de
  piraten-anhalt.de
  www.piraten-magdeburg.de
  hsg.piraten-halle.de
  hsg-md.piraten-lsa.de
  salzwedel.piraten-altmark.de
  stendal.piraten-altmark.de

).each do |host|
  Service.create hostname: host, description: "-", country: 'DE', state: 'ST', show: true
end

# Thüringen TN
%w(
  piraten-altenburger-land.de
  piraten-gotha.de
  wartburgpiraten.de

).each do |host|
  Service.create hostname: host, description: "-", country: 'DE', state: 'TH', show: true
end

# Schleswig-Holstein SH
%w(
  piratenpartei-flensburg.de
  piratenpartei-luebeck.de
).each do |host|
  Service.create hostname: host, description: "-", country: 'DE', state: 'SH', show: true
end


Service.update_addresses!

