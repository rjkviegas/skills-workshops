// Create a pen

var pen = new Pen();

// Create some sheep

var dolly = new Sheep('dolly');
var molly = new Sheep('molly');

// Add Sheep to the Pen

pen.admit(dolly);
pen.admit(molly);

// Get the Sheep names

console.log(pen.sheepNames());
