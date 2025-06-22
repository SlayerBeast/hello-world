<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Cyber Form</title>
  <style>
    body {
      margin: 0;
      font-family: 'Orbitron', sans-serif;
      background-color: #0a0a0f;
      color: #00fff7;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
      background: radial-gradient(ellipse at center, #0a0a0f 0%, #1a1a2e 100%);
    }

    h1 {
      font-size: 2.5em;
      text-shadow: 0 0 10px #00fff7;
      animation: pulse 2s infinite;
    }

    form {
      background-color: rgba(20, 20, 40, 0.8);
      border: 2px solid #00fff7;
      padding: 2em;
      border-radius: 20px;
      width: 90%;
      max-width: 400px;
      box-shadow: 0 0 20px #00fff7;
    }

    label {
      display: block;
      margin: 1em 0 0.3em;
      font-weight: bold;
    }

    input, select, textarea {
      width: 100%;
      padding: 0.8em;
      background-color: #121212;
      color: #00fff7;
      border: 1px solid #00fff7;
      border-radius: 10px;
      font-size: 1em;
      margin-bottom: 1em;
    }

    button {
      width: 100%;
      padding: 0.8em;
      background-color: transparent;
      border: 2px solid #00fff7;
      color: #00fff7;
      font-size: 1em;
      border-radius: 10px;
      transition: background-color 0.3s ease, transform 0.3s ease;
    }

    button:hover {
      background-color: #00fff7;
      color: #0a0a0f;
      transform: scale(1.05);
    }

    footer {
      margin-top: 2em;
      font-size: 0.8em;
      opacity: 0.5;
    }

    @keyframes pulse {
      0%, 100% { text-shadow: 0 0 10px #00fff7; }
      50% { text-shadow: 0 0 20px #00fff7; }
    }
  </style>
  <link href="https://fonts.googleapis.com/css2?family=Orbitron&display=swap" rel="stylesheet">
</head>
<body>
  <h1>Access Protocol</h1>
  <form>
    <label for="username">Username</label>
    <input type="text" id="username" placeholder="Enter your alias">

    <label for="email">Email</label>
    <input type="email" id="email" placeholder="neon@grid.net">

    <label for="role">Role</label>
    <select id="role">
      <option>Hacker</option>
      <option>Engineer</option>
      <option>Strategist</option>
      <option>Other</option>
    </select>

    <label for="message">Message</label>
    <textarea id="message" rows="4" placeholder="Send encrypted data..."></textarea>

    <button type="submit">Transmit</button>
  </form>

  <footer>&copy; 2025 Rahul's Grid • Secure Channel Initiated</footer>
</body>
</html>
