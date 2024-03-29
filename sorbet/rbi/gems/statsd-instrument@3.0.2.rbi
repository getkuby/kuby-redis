# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `statsd-instrument` gem.
# Please instead update this file by running `bin/tapioca gem statsd-instrument`.

module StatsD
  class << self
    def distribution(*args, &block); end
    def event(*args, &block); end
    def gauge(*args, &block); end
    def histogram(*args, &block); end
    def increment(*args, &block); end
    def logger; end
    def logger=(_arg0); end
    def measure(*args, &block); end
    def service_check(*args, &block); end
    def set(*args, &block); end
    def singleton_client; end
    def singleton_client=(_arg0); end
  end
end

module StatsD::Instrument
  def statsd_count(method, name, sample_rate: T.unsafe(nil), tags: T.unsafe(nil), no_prefix: T.unsafe(nil), client: T.unsafe(nil)); end
  def statsd_count_if(method, name, sample_rate: T.unsafe(nil), tags: T.unsafe(nil), no_prefix: T.unsafe(nil), client: T.unsafe(nil)); end
  def statsd_count_success(method, name, sample_rate: T.unsafe(nil), tags: T.unsafe(nil), no_prefix: T.unsafe(nil), client: T.unsafe(nil)); end
  def statsd_distribution(method, name, sample_rate: T.unsafe(nil), tags: T.unsafe(nil), no_prefix: T.unsafe(nil), client: T.unsafe(nil)); end
  def statsd_instrumentations; end
  def statsd_measure(method, name, sample_rate: T.unsafe(nil), tags: T.unsafe(nil), no_prefix: T.unsafe(nil), client: T.unsafe(nil)); end
  def statsd_remove_count(method, name); end
  def statsd_remove_count_if(method, name); end
  def statsd_remove_count_success(method, name); end
  def statsd_remove_distribution(method, name); end
  def statsd_remove_measure(method, name); end

  private

  def add_to_method(method, name, action, &block); end
  def method_visibility(method); end
  def remove_from_method(method, name, action); end
  def statsd_instrumentation_for(method, name, action); end

  class << self
    def current_timestamp; end
    def duration; end
    def generate_metric_name(name, callee, *args); end
  end
end

module StatsD::Instrument::Assertions
  include ::StatsD::Instrument::Helpers

  def assert_no_statsd_calls(*metric_names, datagrams: T.unsafe(nil), client: T.unsafe(nil), &block); end
  def assert_statsd_calls(expectations, datagrams: T.unsafe(nil), client: T.unsafe(nil), &block); end
  def assert_statsd_distribution(metric_name, value = T.unsafe(nil), datagrams: T.unsafe(nil), client: T.unsafe(nil), **options, &block); end
  def assert_statsd_expectation(expectations, datagrams: T.unsafe(nil), client: T.unsafe(nil), &block); end
  def assert_statsd_expectations(expectations, datagrams: T.unsafe(nil), client: T.unsafe(nil), &block); end
  def assert_statsd_gauge(metric_name, value = T.unsafe(nil), datagrams: T.unsafe(nil), client: T.unsafe(nil), **options, &block); end
  def assert_statsd_histogram(metric_name, value = T.unsafe(nil), datagrams: T.unsafe(nil), client: T.unsafe(nil), **options, &block); end
  def assert_statsd_increment(metric_name, value = T.unsafe(nil), datagrams: T.unsafe(nil), client: T.unsafe(nil), **options, &block); end
  def assert_statsd_measure(metric_name, value = T.unsafe(nil), datagrams: T.unsafe(nil), client: T.unsafe(nil), **options, &block); end
  def assert_statsd_set(metric_name, value = T.unsafe(nil), datagrams: T.unsafe(nil), client: T.unsafe(nil), **options, &block); end

  private

  def capture_statsd_datagrams_with_exception_handling(client:, &block); end
end

class StatsD::Instrument::CaptureSink
  def initialize(parent:, datagram_class: T.unsafe(nil)); end

  def <<(datagram); end
  def clear; end
  def datagram_class; end
  def datagrams; end
  def parent; end
  def sample?(_sample_rate); end
end

class StatsD::Instrument::Client
  def initialize(prefix: T.unsafe(nil), default_sample_rate: T.unsafe(nil), default_tags: T.unsafe(nil), implementation: T.unsafe(nil), sink: T.unsafe(nil), datagram_builder_class: T.unsafe(nil)); end

  def capture(&block); end
  def capture_sink; end
  def clone_with_options(sink: T.unsafe(nil), prefix: T.unsafe(nil), default_sample_rate: T.unsafe(nil), default_tags: T.unsafe(nil), datagram_builder_class: T.unsafe(nil)); end
  def datagram_builder_class; end
  def default_sample_rate; end
  def default_tags; end
  def distribution(name, value = T.unsafe(nil), sample_rate: T.unsafe(nil), tags: T.unsafe(nil), no_prefix: T.unsafe(nil), &block); end
  def event(title, text, timestamp: T.unsafe(nil), hostname: T.unsafe(nil), aggregation_key: T.unsafe(nil), priority: T.unsafe(nil), source_type_name: T.unsafe(nil), alert_type: T.unsafe(nil), tags: T.unsafe(nil), no_prefix: T.unsafe(nil)); end
  def gauge(name, value, sample_rate: T.unsafe(nil), tags: T.unsafe(nil), no_prefix: T.unsafe(nil)); end
  def histogram(name, value, sample_rate: T.unsafe(nil), tags: T.unsafe(nil), no_prefix: T.unsafe(nil)); end
  def increment(name, value = T.unsafe(nil), sample_rate: T.unsafe(nil), tags: T.unsafe(nil), no_prefix: T.unsafe(nil)); end
  def latency(name, sample_rate: T.unsafe(nil), tags: T.unsafe(nil), metric_type: T.unsafe(nil), no_prefix: T.unsafe(nil)); end
  def measure(name, value = T.unsafe(nil), sample_rate: T.unsafe(nil), tags: T.unsafe(nil), no_prefix: T.unsafe(nil), &block); end
  def prefix; end
  def service_check(name, status, timestamp: T.unsafe(nil), hostname: T.unsafe(nil), tags: T.unsafe(nil), message: T.unsafe(nil), no_prefix: T.unsafe(nil)); end
  def set(name, value, sample_rate: T.unsafe(nil), tags: T.unsafe(nil), no_prefix: T.unsafe(nil)); end
  def sink; end
  def with_capture_sink(capture_sink); end
  def with_options(sink: T.unsafe(nil), prefix: T.unsafe(nil), default_sample_rate: T.unsafe(nil), default_tags: T.unsafe(nil), datagram_builder_class: T.unsafe(nil)); end

  protected

  def datagram_builder(no_prefix:); end
  def emit(datagram); end
  def sample?(sample_rate); end

  class << self
    def datagram_builder_class_for_implementation(implementation); end
    def from_env(env = T.unsafe(nil), prefix: T.unsafe(nil), default_sample_rate: T.unsafe(nil), default_tags: T.unsafe(nil), implementation: T.unsafe(nil), sink: T.unsafe(nil), datagram_builder_class: T.unsafe(nil)); end
  end
end

class StatsD::Instrument::Datagram
  def initialize(source); end

  def ==(other); end
  def eql?(other); end
  def hash; end
  def inspect; end
  def name; end
  def sample_rate; end
  def source; end
  def tags; end
  def type; end
  def value; end

  private

  def parsed_datagram; end
end

StatsD::Instrument::Datagram::PARSER = T.let(T.unsafe(nil), Regexp)

class StatsD::Instrument::DatagramBuilder
  def initialize(prefix: T.unsafe(nil), default_tags: T.unsafe(nil)); end

  def c(name, value, sample_rate, tags); end
  def d(name, value, sample_rate, tags); end
  def g(name, value, sample_rate, tags); end
  def h(name, value, sample_rate, tags); end
  def kv(name, value, sample_rate, tags); end
  def latency_metric_type; end
  def ms(name, value, sample_rate, tags); end
  def s(name, value, sample_rate, tags); end

  protected

  def default_tags; end
  def generate_generic_datagram(name, value, type, sample_rate, tags); end
  def normalize_name(name); end
  def normalize_tags(tags); end
  def prefix; end

  class << self
    def datagram_class; end
    def unsupported_datagram_types(*types); end
  end
end

class StatsD::Instrument::DogStatsDDatagram < ::StatsD::Instrument::Datagram
  def aggregation_key; end
  def alert_type; end
  def hostname; end
  def message; end
  def name; end
  def priority; end
  def source_type_name; end
  def timestamp; end
  def value; end

  protected

  def parsed_datagram; end
end

StatsD::Instrument::DogStatsDDatagram::EVENT_PARSER = T.let(T.unsafe(nil), Regexp)
StatsD::Instrument::DogStatsDDatagram::PARSER = T.let(T.unsafe(nil), Regexp)
StatsD::Instrument::DogStatsDDatagram::SERVICE_CHECK_PARSER = T.let(T.unsafe(nil), Regexp)

class StatsD::Instrument::DogStatsDDatagramBuilder < ::StatsD::Instrument::DatagramBuilder
  def _e(title, text, timestamp: T.unsafe(nil), hostname: T.unsafe(nil), aggregation_key: T.unsafe(nil), priority: T.unsafe(nil), source_type_name: T.unsafe(nil), alert_type: T.unsafe(nil), tags: T.unsafe(nil)); end
  def _sc(name, status, timestamp: T.unsafe(nil), hostname: T.unsafe(nil), tags: T.unsafe(nil), message: T.unsafe(nil)); end
  def kv(_, _, _, _); end
  def latency_metric_type; end

  class << self
    def datagram_class; end
  end
end

StatsD::Instrument::DogStatsDDatagramBuilder::SERVICE_CHECK_STATUS_VALUES = T.let(T.unsafe(nil), Hash)

class StatsD::Instrument::Environment
  def initialize(env); end

  def client; end
  def default_sink_for_environment; end
  def env; end
  def environment; end
  def statsd_addr; end
  def statsd_default_tags; end
  def statsd_implementation; end
  def statsd_prefix; end
  def statsd_sample_rate; end

  class << self
    def current; end
    def environment; end
    def setup; end
  end
end

class StatsD::Instrument::Expectation
  def initialize(type:, name:, client: T.unsafe(nil), value: T.unsafe(nil), sample_rate: T.unsafe(nil), tags: T.unsafe(nil), no_prefix: T.unsafe(nil), times: T.unsafe(nil)); end

  def inspect; end
  def matches(actual_metric); end
  def name; end
  def name=(_arg0); end
  def normalized_value_for_type(type, value); end
  def sample_rate; end
  def sample_rate=(_arg0); end
  def tags; end
  def tags=(_arg0); end
  def times; end
  def times=(_arg0); end
  def to_s; end
  def type; end
  def type=(_arg0); end
  def value; end
  def value=(_arg0); end

  private

  def normalize_tags(tags); end

  class << self
    def distribution(name, value = T.unsafe(nil), **options); end
    def gauge(name, value = T.unsafe(nil), **options); end
    def histogram(name, value = T.unsafe(nil), **options); end
    def increment(name, value = T.unsafe(nil), **options); end
    def measure(name, value = T.unsafe(nil), **options); end
    def set(name, value = T.unsafe(nil), **options); end
  end
end

module StatsD::Instrument::Helpers
  def capture_statsd_calls(client: T.unsafe(nil), &block); end
  def capture_statsd_datagrams(client: T.unsafe(nil), &block); end
end

class StatsD::Instrument::LogSink
  def initialize(logger, severity: T.unsafe(nil)); end

  def <<(datagram); end
  def logger; end
  def sample?(_sample_rate); end
  def severity; end
end

module StatsD::Instrument::Matchers
  def trigger_statsd_distribution(metric_name, options = T.unsafe(nil)); end
  def trigger_statsd_gauge(metric_name, options = T.unsafe(nil)); end
  def trigger_statsd_histogram(metric_name, options = T.unsafe(nil)); end
  def trigger_statsd_increment(metric_name, options = T.unsafe(nil)); end
  def trigger_statsd_measure(metric_name, options = T.unsafe(nil)); end
  def trigger_statsd_set(metric_name, options = T.unsafe(nil)); end
end

class StatsD::Instrument::Matchers::Distribution < ::StatsD::Instrument::Matchers::Matcher; end
class StatsD::Instrument::Matchers::Gauge < ::StatsD::Instrument::Matchers::Matcher; end
class StatsD::Instrument::Matchers::Histogram < ::StatsD::Instrument::Matchers::Matcher; end
class StatsD::Instrument::Matchers::Increment < ::StatsD::Instrument::Matchers::Matcher; end

class StatsD::Instrument::Matchers::Matcher
  include ::RSpec::Matchers::Composable
  include ::StatsD::Instrument::Helpers

  def initialize(metric_type, metric_name, options = T.unsafe(nil)); end

  def failure_message; end
  def failure_message_when_negated; end
  def matches?(block); end
  def supports_block_expectations?; end

  private

  def expect_statsd_call(metric_type, metric_name, options, &block); end
  def metric_information(metric_name, options, metrics, expectation); end
end

class StatsD::Instrument::Matchers::Measure < ::StatsD::Instrument::Matchers::Matcher; end
class StatsD::Instrument::Matchers::Set < ::StatsD::Instrument::Matchers::Matcher; end
StatsD::Instrument::MetricExpectation = StatsD::Instrument::Expectation

class StatsD::Instrument::NullSink
  def <<(_datagram); end
  def sample?(_sample_rate); end
end

class StatsD::Instrument::Railtie < ::Rails::Railtie; end

class StatsD::Instrument::StatsDDatagramBuilder < ::StatsD::Instrument::DatagramBuilder
  def d(_, _, _, _); end
  def h(_, _, _, _); end
  def kv(_, _, _, _); end

  protected

  def normalize_tags(tags); end
end

class StatsD::Instrument::UDPSink
  def initialize(host, port); end

  def <<(datagram); end
  def addr; end
  def host; end
  def port; end
  def sample?(sample_rate); end

  private

  def invalidate_socket; end
  def socket; end
  def with_socket; end

  class << self
    def for_addr(addr); end
  end
end

StatsD::Instrument::VERSION = T.let(T.unsafe(nil), String)
StatsD::Instrument::VOID = T.let(T.unsafe(nil), StatsD::Instrument::VoidClass)
class StatsD::Instrument::VoidClass; end
