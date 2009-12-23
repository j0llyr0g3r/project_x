###########################################################
#                 Custom Log
###########################################################
cust_logfile = File.open("#{RAILS_ROOT}/log/cust.log", 'a')
cust_logfile.sync = true
$cust_log = Logger.new(cust_logfile)
$cust_log.debug("logging initialized")