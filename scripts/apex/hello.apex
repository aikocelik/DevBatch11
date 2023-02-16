



//invoke Auto Launched Flow from Apex
Map<String, Object> inputs = new Map<String, Object>();
inputs.put('ownerId', '0058d0000056jFmAAI');
inputs.put('recordId', '0018d00000KUhaVAAT');
Flow.Interview autoLaunchFlow = Flow.Interview.createInterview('Auto_Launched_Flow_Demo', inputs);
autoLaunchFlow.start();

RestApiOutboundCallout.getAnimals();
RestApiOutboundCallout.getUser();
RestApiOutboundCallout.getListOfUsers();
RestApiOutboundCallout.postAnimal();
RestApiOutboundCallout.postUser();
RestApiOutboundCallout.getAnimalWithAuthenticationNamedCredential();


