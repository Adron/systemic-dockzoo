#! /bin/bash -e

# Generates the default exhibitor config and launches exhibitor
MISSING_VAR_MESSAGE="must be set"
DEFAULT_AWS_REGION="us-west-2"
DEFAULT_DATA_DIR="/opt/zookeeper/snapshots"
DEFAULT_LOG_DIR="/opt/zookeeper/transactions"
DEFAULT_ZK_ENSEMBLE_SIZE=0
S3_SECURITY=""
HTTP_PROXY=""
: ${HOSTNAME:?$MISSING_VAR_MESSAGE}
: ${AWS_REGION:=$DEFAULT_AWS_REGION}
: ${ZK_DATA_DIR:=$DEFAULT_DATA_DIR}
: ${ZK_LOG_DIR:=$DEFAULT_LOG_DIR}
: ${ZK_ENSEMBLE_SIZE:=$DEFAULT_ZK_ENSEMBLE_SIZE}
: ${HTTP_PROXY_HOST:=""}
: ${HTTP_PROXY_PORT:=""}
: ${HTTP_PROXY_USERNAME:=""}
: ${HTTP_PROXY_PASSWORD:=""}

cat <<- EOF > /opt/exhibitor/defaults.conf
	zookeeper-data-directory=$ZK_DATA_DIR
	zookeeper-install-directory=/opt/zookeeper
	zookeeper-log-directory=$ZK_LOG_DIR
	log-index-directory=$ZK_LOG_DIR
	cleanup-period-ms=300000
	check-ms=30000
	backup-period-ms=600000
	client-port=2181
	cleanup-max-files=20
	backup-max-store-ms=21600000
	connect-port=2888
	observer-threshold=0
	election-port=3888
	zoo-cfg-extra=tickTime\=2000&initLimit\=10&syncLimit\=5&quorumListenOnAllIPs\=true
	auto-manage-instances-settling-period-ms=0
	auto-manage-instances=1
	auto-manage-instances-fixed-ensemble-size=$ZK_ENSEMBLE_SIZE
EOF

exec 2>&1

java -jar /opt/exhibitor/exhibitor.jar \
  --port 8181 --defaultconfig /opt/exhibitor/defaults.conf \
  ${BACKUP_CONFIG} \
  ${HTTP_PROXY} \
  --hostname ${HOSTNAME} \
  ${SECURITY}
