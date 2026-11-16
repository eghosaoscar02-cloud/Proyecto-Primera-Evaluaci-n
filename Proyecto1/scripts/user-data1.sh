#!/bin/bash
dnf install -y nginx
systemctl enable --now nginx

cat > /usr/share/nginx/html/index.html <<EOF
<!doctype html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <title>Libreria Tinta</title>
</head>
<body>
  <h1>Libreria Tinta</h1>
  <p>Tu libreria de barrio.</p>

  <h2>Horario</h2>
  <p>Lunes a viernes: 9:30 - 14:00 y 16:30 - 20:30<br>
  Sabados: 10:00 - 14:00<br>
  Domingos: cerrado</p>

  <h2>Direccion</h2>
  <p>Calle de los Escritores, 12 - 46001 Valencia</p>

  <h2>Recomendacion del mes</h2>
  <p><strong>Cien anos de soledad</strong>, de Gabriel Garcia Marquez.
  Un clasico que siempre se disfruta releer.</p>

  <hr>
  <small>Desplegado por Oscar Egosa en el servidor $(hostname) el $(date '+%d/%m/%Y %H:%M')</small>
</body>
</html>
EOF
