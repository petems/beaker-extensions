require 'beaker'
require 'beaker/extensions'

RSpec.configure do |config|
  config.color = true
  config.order = :random
end

def logger
  double( 'logger' ).as_null_object
end

def make_opts
    opts = Beaker::Options::Presets.new
    opts.presets.merge( opts.env_vars ).merge( { :logger => logger,
                                               :host_config => 'sample.config',
                                               :type => :foss,
                                               :pooling_api => 'http://vcloud.delivery.puppetlabs.net/',
                                               :datastore => 'instance0',
                                               :folder => 'Delivery/Quality Assurance/Staging/Dynamic',
                                               :resourcepool => 'delivery/Quality Assurance/Staging/Dynamic',
                                               :gce_project => 'beaker-compute',
                                               :gce_keyfile => '/path/to/keyfile.p12',
                                               :gce_password => 'notasecret',
                                               :gce_email => '12345678910@developer.gserviceaccount.com' } )
  end