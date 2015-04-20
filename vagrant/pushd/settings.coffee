exports.server =
    redis_port: process.env['REDIS_PORT_6379_TCP_PORT'] or 6379
    redis_host: process.env['REDIS_PORT_6379_TCP_ADDR'] or "localhost"
    tcp_port: 2407
    udp_port: 2407
    access_log: yes
    acl:
        publish: ['127.0.0.1', '10.0.0.0/8', '172.16.0.0/12', '192.168.0.0/16']

exports['event-source'] =
    enabled: yes

exports['apns'] =
    enabled: no
    #enabled: yes
    class: require('./lib/pushservices/apns').PushServiceAPNS
    #cert: '/mnt/pushd/cert.pem'
    #key: '/mnt/pushd/key.pem'
    cacheLength: 100
    payloadFilter: ['messageFrom', 'news_id']
    gateway: process.env['APN_PUSH_GATEWAY']
    address: process.env['APN_FEEDBACK_ADDRESS']

exports['gcm'] =
    enabled: yes
    class: require('./lib/pushservices/gcm').PushServiceGCM
    key: process.env['GCM_API_KEY']

exports['http'] =
    enabled: no

exports['mpns-toast'] =
    enabled: no

exports['mpns-tile'] =
    enabled: no

exports['mpns-raw'] =
    enabled: no

exports['loglevel'] = process.env['LOGLEVEL'] or 'info'
