public with sharing class SimplePrint implements Schedulable {
    private String msg;
    private Boolean newSchedule;
    
    public SimplePrint(String message, Boolean newSchedule) {
        this.msg = message;
        this.newSchedule = newSchedule;
    }

    public void execute(SchedulableContext context) {
        System.debug(this.msg);
        // schedule again, this time, without continuing
        if (newSchedule) {
            SimplePrint sp = new SimplePrint(this.msg, false);
            DateTime newTime = DateTime.now().addMinutes(5);
            String cron = CronMaker.generateCron(newTime);
            System.schedule('Simple Schedule Job', cron, sp);
        }
    }
}
