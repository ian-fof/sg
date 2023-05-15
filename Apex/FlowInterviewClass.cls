public class FlowInterviewClass {

    public static void dynamicFlowMethod(String nameSpace, String flowName, Map<String, Object> inputs) {

        Flow.Interview f = Flow.Interview.createInterview(nameSpace, flowName, inputs);

        f.start();

        String value = (String) f.getVariableValue('WelcomeText');
        System.debug('The flow says: ' + value);
    }
}

