DateTime dt = DateTime.now();
System.debug(CronMaker.generateCron(dt));

System.debug(dt.hour());
System.debug(dt.hourGmt());