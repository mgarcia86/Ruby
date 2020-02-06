require 'report_builder'

Before do |scenario|
    # page.current_window.maximize #maximiza janela
    @fake_name = FakeNamePage.new
    @google_account = GoogleAccountPage.new
end

After do |scenario|
    add_screenshot(scenario)
end

at_exit do
    ReportBuilder.input_path = 'results/cucumber.json' # busca arquivo json
    ReportBuilder.report_path = 'results/report_completo' # gera relatório
    ReportBuilder.configure do |config|
        # config.report_path = 'relatorios'
        config.report_types = [:json, :html]
        options = { 
        report_title: "Teste",
        additional_info: {
            'Navegador' => 'Chrome',
            'Responsável' => 'Marcos Pereira Garcia',
            'Data e Hora' => Time.now.strftime("%d/%m/%Y - %H:%M:%S") }
        }
        ReportBuilder.build_report options
    end
end