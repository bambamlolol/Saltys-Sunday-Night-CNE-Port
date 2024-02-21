//goes in data/states
function create() { //called on the state start, before most stuff has loaded

}

function postCreate() { //called after the state start, now most stuff has loaded
    bg.loadGraphic(Paths.image("menus/menuBGBlue"));
}

function update(elapsed) { //called each frame
    bg.color = 0xFFFFFFFF;

}

function preUpdate(elapsed) { //called before each frame
    bg.color = 0xFFFFFFFF;

}

function postUpdate(elapsed) { //called after each frame
    bg.color = 0xFFFFFFFF;
}