
name = "firstname lastname";
experiment_number = "0";

Dialog.create("Experiment analysis");
Dialog.addMessage("This message serves explaining you this window.");
Dialog.addString("Your name", name);
Dialog.addNumber("Experiment number", experiment_number);

// this will show the dialog on screen
Dialog.show();

// Code execution will continue after the user clicked ok
name = Dialog.getString();
experiment_number = Dialog.getNumber();

// show what has been entered
print(name + " is analysing experiment number " + experiment_number);

