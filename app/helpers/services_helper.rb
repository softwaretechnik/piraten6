# encoding: UTF-8
module ServicesHelper

  def whois_url(ip)
    "https://apps.db.ripe.net/search/query.html?searchtext=#{ip}&searchSubmit=search"
  end

  def state_to_human(state)
      case state
      when 'BW'
        'Baden-Württemberg'
      when 'BY'
        'Bayern'
      when 'BE'
        'Berlin'
      when 'BB'
        'Brandenburg'
      when 'HB'
        'Bremen'
      when 'HH'
        'Hamburg'
      when 'HE'
        'Hessen'
      when 'MV'
        'Mecklenburg-Vorpommern'
      when 'NI'
        'Niedersachsen'
      when 'NW'
        'Nordrhein-Westfalen'
      when 'RP'
        'Rheinland-Pfalz'
      when 'SL'
        'Saarland'
      when 'SN'
        'Sachsen'
      when 'ST'
        'Sachsen-Anhalt'
      when 'SH'
        'Schleswig-Holstein'
      when 'TH'
        'Thüringen'
      end
  end
end
