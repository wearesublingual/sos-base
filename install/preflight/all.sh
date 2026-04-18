source $SUBLINGUAL_OS_INSTALL/preflight/guard.sh
source $SUBLINGUAL_OS_INSTALL/preflight/begin.sh
run_logged $SUBLINGUAL_OS_INSTALL/preflight/show-env.sh
run_logged $SUBLINGUAL_OS_INSTALL/preflight/pacman.sh
run_logged $SUBLINGUAL_OS_INSTALL/preflight/migrations.sh
run_logged $SUBLINGUAL_OS_INSTALL/preflight/first-run-mode.sh
run_logged $SUBLINGUAL_OS_INSTALL/preflight/disable-mkinitcpio.sh
