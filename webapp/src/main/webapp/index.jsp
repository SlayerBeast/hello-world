<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome Beast Slayer</title>
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@600&display=swap" rel="stylesheet">
  <style>
    html, body {
      margin: 0;
      padding: 0;
      height: 100%;
      overflow: hidden;
      background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
      font-family: 'Orbitron', sans-serif;
      display: flex;
      align-items: center;
      justify-content: center;
      color: #00fff7;
    }

    .intro {
      text-align: center;
      z-index: 1;
    }

    h1 {
      font-size: 4em;
      letter-spacing: 3px;
      text-shadow: 0 0 20px #00fff7, 0 0 40px #00fff7;
      animation: glow 3s ease-in-out infinite;
    }

    p {
      font-size: 1.3em;
      opacity: 0.85;
      margin-top: 1em;
    }

    @keyframes glow {
      0%, 100% { text-shadow: 0 0 20px #00fff7, 0 0 40px #00fff7; }
      50% { text-shadow: 0 0 40px #00fff7, 0 0 80px #00fff7; }
    }

    canvas {
      position: absolute;
      top: 0; left: 0;
      width: 100%;
      height: 100%;
      z-index: 0;
    }
  </style>
</head>
<body>
  <div class="intro">
    <h1>Welcome, Beast Slayer!</h1>
    <p>Initializing access to your digital dominion...</p>
  </div>

  <canvas id="particles"></canvas>

  <script>
    const canvas = document.getElementById("particles");
    const ctx = canvas.getContext("2d");
    let w, h;
    let particles = [];

    function resize() {
      w = canvas.width = window.innerWidth;
      h = canvas.height = window.innerHeight;
    }

    window.addEventListener("resize", resize);
    resize();

    class Particle {
      constructor() {
        this.x = Math.random() * w;
        this.y = Math.random() * h;
        this.vx = (Math.random() - 0.5) * 0.8;
        this.vy = (Math.random() - 0.5) * 0.8;
        this.radius = Math.random() * 2 + 1;
      }

      update() {
        this.x += this.vx;
        this.y += this.vy;
        if (this.x < 0 || this.x > w) this.vx *= -1;
        if (this.y < 0 || this.y > h) this.vy *= -1;
      }

      draw() {
        ctx.beginPath();
        ctx.arc(this.x, this.y, this.radius, 0, Math.PI * 2);
        ctx.fillStyle = "#00fff7";
        ctx.fill();
      }
    }

    for (let i = 0; i < 100; i++) {
      particles.push(new Particle());
    }

    function animate() {
      ctx.clearRect(0, 0, w, h);
      particles.forEach(p => {
        p.update();
        p.draw();
      });
      requestAnimationFrame(animate);
    }

    animate();
  </script>
</body>
</html>
