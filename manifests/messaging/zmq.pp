# == Define: oslo::messaging::zmq
#
# DEPRECATED!
#
# Configure ZeroMQ messaging options
#
# This resource configures ZeroMQ messaging resources for an OpenStack service.
# It will manage the [DEFAULT] section in the given config resource.
#
# == Parameters
#
# [*rpc_cast_timeout*]
#  (optional) Seconds to wait before a cast expires (TTL).
#  The default value of -1 specifies an infinite linger
#  period. The value of 0 specifies no linger period.
#  Pending messages shall be discarded immediately
#  when the socket is closed. Only supported by impl_zmq.
#  Defaults to $::os_service_default.
#
# [*rpc_poll_timeout*]
#  (optional) The default number of seconds that poll should wait.
#  Poll raises timeout exception when timeout expired.
#  Defaults to $::os_service_default.
#
# [*rpc_zmq_bind_address*]
#  (optional) ZeroMQ bind address.
#  Should be a wildcard (*), an ethernet interface, or IP.
#  The "host" option should point or resolve to this address.
#  Defaults to $::os_service_default.
#
# [*rpc_zmq_bind_port_retries*]
#  (optional) Number of retries to find free port number
#  before fail with ZMQBindError.
#  Defaults to $::os_service_default.
#
# [*rpc_zmq_concurrency*]
#  (optional) Type of concurrency used.
#  Either "native" or "eventlet".
#  Defaults to $::os_service_default.
#
# [*rpc_zmq_contexts*]
#  (optional) Number of ZeroMQ contexts.
#  Defaults to $::os_service_default.
#
# [*rpc_zmq_host*]
#  (optional) Name of this node.
#  Must be a valid hostname, FQDN, or IP address.
#  Must match "host" option, if running Nova.
#  Defaults to $::os_service_default.
#
# [*rpc_zmq_ipc_dir*]
#  (optional) Directory for holding IPC sockets.
#  Defaults to $::os_service_default.
#
# [*rpc_zmq_matchmaker*]
#  (optional) MatchMaker driver.
#  Defaults to $::os_service_default.
#
# [*rpc_zmq_max_port*]
#  (optional) Maximal port number for random ports range.
#  Defaults to $::os_service_default.
#
# [*rpc_zmq_min_port*]
#  (optional) Minimal port number for random ports range.
#  Defaults to $::os_service_default.
#
# [*rpc_zmq_topic_backlog*]
#  (optional) Maximum number of ingress messages to locally buffer per topic.
#  Defaults to $::os_service_default.
#
# [*use_pub_sub*]
#  (optional) Use PUB/SUB pattern for fanout methods.
#  PUB/SUB always uses proxy.
#  Defaults to $::os_service_default.
#
# [*zmq_target_expire*]
#  (optional) Expiration timeout in seconds of a name service
#  record about existing target ( < 0 means no timeout).
#  Defaults to $::os_service_default.
#
define oslo::messaging::zmq(
  $rpc_cast_timeout          = $::os_service_default,
  $rpc_poll_timeout          = $::os_service_default,
  $rpc_zmq_bind_address      = $::os_service_default,
  $rpc_zmq_bind_port_retries = $::os_service_default,
  $rpc_zmq_concurrency       = $::os_service_default,
  $rpc_zmq_contexts          = $::os_service_default,
  $rpc_zmq_host              = $::os_service_default,
  $rpc_zmq_ipc_dir           = $::os_service_default,
  $rpc_zmq_matchmaker        = $::os_service_default,
  $rpc_zmq_max_port          = $::os_service_default,
  $rpc_zmq_min_port          = $::os_service_default,
  $rpc_zmq_topic_backlog     = $::os_service_default,
  $use_pub_sub               = $::os_service_default,
  $zmq_target_expire         = $::os_service_default,
) {

  warning('oslo::messaging::zmq is deprecated and has no effect since zeromq support in oslo.messaging is removed')
}
