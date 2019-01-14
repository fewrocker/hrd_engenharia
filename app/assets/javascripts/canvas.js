// var canvas = document.getElementById('nokey')
// var wrapperCanvas = document.querySelector('wrapper-page')

// can_w = parseInt(canvas.getAttribute('width')),
// can_h = parseInt(canvas.getAttribute('height')),
// ctx = canvas.getContext('2d');

// var ball = {
//       x: 0,
//       y: 0,
//       vx: 0,
//       vy: 0,
//       r: 0,
//       alpha: 1,
//       phase: 0
//    },
//    ball_color = {
//        r: 23,
//        g: 78,
//        b: 138
//    },
//    R = 3,
//    balls = [],

// // Line
//    link_line_width = 0.8,
//    dis_limit = 140,
//    add_mouse_point = true,
//    mouse_in = false,
//    mouse_ball = {
//       x: 0,
//       y: 0,
//       vx: 0,
//       vy: 0,
//       r: 0,
//       type: 'mouse'
//    };


// // Draw Ball
// function renderBalls(){
//     Array.prototype.forEach.call(balls, function(b){
//        if(!b.hasOwnProperty('type')){
//            ctx.fillStyle = 'rgba('+ball_color.r+','+ball_color.g+','+ball_color.b+','+b.alpha+')';
//            ctx.beginPath();
//            ctx.arc(b.x, b.y, R, 0, Math.PI*2, true);
//            ctx.closePath();
//            ctx.fill();
//        }
//     });
// }

// // Draw lines
// function renderLines(){
//     var fraction, alpha;
//     for (var i = 0; i < balls.length; i++) {
//         for (var j = i + 1; j < balls.length; j++) {

//            fraction = getDisOf(balls[i], balls[j]) / dis_limit;

//            if(fraction < 1){
//                alpha = (1 - fraction).toString();

//                ctx.strokeStyle = 'rgba(150,150,150,'+alpha+')';
//                ctx.lineWidth = link_line_width;

//                ctx.beginPath();
//                ctx.moveTo(balls[i].x, balls[i].y);
//                ctx.lineTo(balls[j].x, balls[j].y);
//                ctx.stroke();
//                ctx.closePath();
//            }
//         }
//     }
// }

// // calculate distance between two points
// function getDisOf(b1, b2){
//     var  delta_x = Math.abs(b1.x - b2.x),
//        delta_y = Math.abs(b1.y - b2.y);

//     return Math.sqrt(delta_x*delta_x + delta_y*delta_y);
// }

// // add balls if there a little balls
// function addBallIfy(){
//     if(balls.length < 50){
//         balls.push(getRandomBall());
//     }
// }

// // Render
// function render(){
//     ctx.clearRect(0, 0, can_w, can_h);

//     renderBalls();

//     renderLines();

//     updateBalls();

//     addBallIfy();

//     window.requestAnimationFrame(render);
// }

// // Init Balls
// function initBalls(){
//   x_dist = 60;
//   y_dist = 60;
//   x_balls = Math.floor(can_w/x_dist)
//   y_balls = Math.floor(can_h/y_dist)

//   alpha_max = x_balls * y_balls

//     for(var i = 0; i <= x_balls + 1; i++){
//       for(var j = 0; j <= y_balls + 1; j++) {
//         balls.push({
//             x: x_dist*i,
//             y: y_dist*j,
//             r: R * (i * j)/(x_balls * y_balls),
//             alpha: 1
//         });
//       }
//     }
// }
// // Init Canvas
// function initCanvas(){
//   var wrapperCanvas = document.querySelector('.wrapper-page')
//   var filterCanvas = document.querySelector('.canvas-filter')

//     // canvas.setAttribute('width', window.innerWidth);
//     // canvas.setAttribute('height', window.innerHeight);

//     canvas.setAttribute('width', window.innerWidth);
//     canvas.setAttribute('height', wrapperCanvas.offsetHeight);

//     can_w = parseInt(canvas.getAttribute('width'));
//     can_h = parseInt(canvas.getAttribute('height'));

//     filterCanvas.style.height = can_h + 'px'
// }

// window.addEventListener('resize', function(e){
//     console.log('Window Resize...');
//     initCanvas();
// });

// function goMovie(){
//     initCanvas();
//     initBalls();
//     window.requestAnimationFrame(render);
// }
// goMovie();
