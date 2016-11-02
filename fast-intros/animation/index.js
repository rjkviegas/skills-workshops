function World(screen) {
  this.screen = screen;

  this.square = { x: 10, y: 10, width: 10, height: 10 };
};

World.prototype = {
  update: function() {
    this.square.width += 1;
    this.square.height += 1;
  },

  draw: function() {
    this.screen.fillRect(this.square.x,
                         this.square.y,
                         this.square.width,
                         this.square.height);
  }
};

var screen = document.getElementById("screen").getContext("2d");
var world = new World(screen);

function tick() {
  world.update();
  world.draw();
  requestAnimationFrame(tick);
};

tick();
