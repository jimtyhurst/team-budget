#! /bin/bash
# Get Configuration
echo "##############################"
echo  Running getconfig.sh...
echo  CONFIG SETTINGS
echo "##############################"
echo  PROJ_SETTINGS_DIR $PROJ_SETTINGS_DIR
echo  DEPLOY_TARGET $DEPLOY_TARGET
echo  CONFIG_BUCKET $CONFIG_BUCKET
if [ "$DEPLOY_TARGET" == "local" ]; then
    echo -e "#####################################################"
    echo -e  USING LOCAL CONFIG. MAKE SURE YOU HAVE A LOCAL CONFIG
    echo -e "#####################################################"
else
    echo -e "########################################"
    echo -e  "USING $DEPLOY_TARGET CONFIG"
    echo -e  "USING THE $CONFIG_BUCKET CONFIG BUCKET"
    echo -e "########################################"
    export PATH=$PATH:~/.local/bin
    aws s3 cp \
          s3://$CONFIG_BUCKET/$DEPLOY_TARGET/project_config.py \
          $PROJ_SETTINGS_DIR/project_config.py;
    # Debugging just to make sure the file is where and how we expect it to be, at least until this script finishes
    ls -la $PROJ_SETTINGS_DIR/project_config.py
fi
