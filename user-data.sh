#!/bin/bash
set -euxo pipefail

# Save installation output for troubleshooting
exec > >(tee /var/log/user-data.log | logger -t user-data -s 2>/dev/console) 2>&1

# Install Apache
dnf install -y httpd

# Create the webpage
cat > /var/www/html/index.html <<'HTML'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Terraform Web Server</title>
  <style>
    body {
      margin: 0;
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      font-family: Arial, sans-serif;
      background: #f3f6fa;
    }

    .card {
      padding: 40px;
      text-align: center;
      background: white;
      border-radius: 12px;
      box-shadow: 0 4px 18px rgba(0, 0, 0, 0.12);
    }

    h1 {
      color: #146eb4;
    }
  </style>
</head>
<body>
  <div class="card">
    <h1>Terraform Web Server Project</h1>
    <p>Deployed successfully by Sahil Dogra on AWS.</p>
  </div>
</body>
</html>
HTML

# Start Apache now and automatically after reboot
systemctl enable --now httpd

# Confirm Apache is running
systemctl status httpd --no-pager
curl -I http://localhost