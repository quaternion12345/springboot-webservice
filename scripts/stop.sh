#!/usr/bin/env bash
# 기존 Nginx에는 연결되어 있지 않지만 실행중이던 SpringBoot 종료
ABSPATH=$(readlink -f $0)
ABSDIR=$(dirname $ABSPATH) # stop.sh가 속해 있는 경로
source ${ABSDIR}/profile.sh # profile.sh를 import

IDLE_PORT=$(find_idle_port)

echo "> $IDLE_PORT 에서 구동 중인 애플리케이션 pid 확인"
IDLE_PID=$(lsof -ti tcp:${IDLE_PORT})

if [ -z ${IDLE_PID} ]
then
  echo "> 현재 구동 중인 애플리케이션이 없으므로 종료하지 않습니다."
else
  echo "> kill -15 $IDLE_PID"
  kill -15 ${IDLE_PID}
  sleep 5
fi