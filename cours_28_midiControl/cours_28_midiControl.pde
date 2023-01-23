// from 
// https://github.com/sparks/themidibus
 

import themidibus.*;
MidiBus myBus;

float circleWidth = 100;

void setup() {
  size(400, 400);
  background(0);

  MidiBus.list(); // List all available Midi devices

  //                      select input here
  //                        |
  myBus = new MidiBus(this, 1, 0);

}

void draw() {
  background(0);
 
  circle(width / 2, height / 2, circleWidth);
  
}

void noteOn(Note note) {
  // Receive a noteOn
  println();
  println("Note On:");
  println("--------");
  println("Channel:"+note.channel());
  println("Pitch:"+note.pitch());
  println("Velocity:"+note.velocity());
}

void noteOff(Note note) {
  // Receive a noteOff
  println();
  println("Note Off:");
  println("--------");
  println("Channel:"+note.channel());
  println("Pitch:"+note.pitch());
  println("Velocity:"+note.velocity());
}

void controllerChange(ControlChange change) {
  // Receive a controllerChange
  println();
  println("Controller Change:");
  println("--------");
  println("Channel:"+change.channel());
  println("Number:"+change.number());
  println("Value:"+change.value());
  
  if( change.channel() == 0 ) circleWidth = change.value();
}
