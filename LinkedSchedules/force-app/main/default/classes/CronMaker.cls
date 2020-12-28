public with sharing class CronMaker {
    public static String generateCron(Datetime dt) {
        // uses 's m h d m ? y'     
        return String.format('{0} {1} {2} {3} {4} ? {5}', new List<Integer> {
            dt.second(), dt.minute(), dt., dt.day(), dt.month(), dt.year()
        });
    }
}
