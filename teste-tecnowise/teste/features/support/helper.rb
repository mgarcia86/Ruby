def add_screenshot(scenario)
    nome = scenario.name.gsub(/[^A-Za-z0-9]/, ' ').tr(' ', '-').downcase!
    if scenario.failed?()
        f = page.save_screenshot("results/screenshots/falhou/#{nome}.png")
        embed(f, 'image/png', 'Falhou')
    elsif
        s = page.save_screenshot("results/screenshots/passou/#{nome}.png")
        embed(s, 'image/png', 'Passou')
    end
end