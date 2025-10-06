<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Delete Account</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: 'Segoe UI', sans-serif;
      background-color: #f4f4f4;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .delete-form {
      background-color: white;
      padding: 40px;
      border-radius: 10px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 400px;
      box-sizing: border-box;
    }

    .delete-form h2 {
      text-align: center;
      margin-bottom: 25px;
      color: #222;
    }

    .delete-form input[type="text"],
    .delete-form input[type="tel"],
    .delete-form input[type="password"] {
      width: 100%;
      padding: 12px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 6px;
      box-sizing: border-box;
    }

    .delete-form button {
      width: 100%;
      padding: 12px;
      background-color: #008cff;
      color: white;
      border: none;
      border-radius: 6px;
      font-size: 16px;
      cursor: pointer;
      margin-top: 15px;
      transition: background-color 0.3s ease;
    }

    .delete-form button:hover {
      background-color: #0072d1;
    }
  </style>
</head>
<body>

  <form class="delete-form">
    <h2>Delete Account</h2>
    <input type="text" placeholder="Your Name" required>
    <input type="tel" placeholder="Your Phone Number" required>
    <input type="password" placeholder="Password" required>
    <button type="submit">Submit</button>
  </form>

</body>
</html>
