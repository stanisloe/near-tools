#!/bin/sh

export NEAR_ENV=mainnet
export LOGS=/home/near/scripts/near.log
export NEAR_ACCOUNT_ALIAS=2pilot

echo "---" >> $LOGS
date >> $LOGS
near call $NEAR_ACCOUNT_ALIAS.poolv1.near ping '{}' --accountId $NEAR_ACCOUNT_ALIAS.near >> $LOGS
near proposals | grep $NEAR_ACCOUNT_ALIAS >> $LOGS
near validators current | grep $NEAR_ACCOUNT_ALIAS >> $LOGS
near validators next | grep $NEAR_ACCOUNT_ALIAS >> $LOGS
