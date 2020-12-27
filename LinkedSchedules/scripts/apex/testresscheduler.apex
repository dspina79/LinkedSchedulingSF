SimplePrint sp = new SimplePrint('Hello World!', true);

// set it to run in 3 minutes 
DateTime dt = DateTime.now().addMinutes(3);
String cronExpression = CronMaker.generateCron(dt);

// schedule it
System.schedule('SimplePrint Job', cronExpression, sp);