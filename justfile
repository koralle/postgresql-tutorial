# setup
up:
  docker compose -f compose.yaml up -d

# down
down:
  docker compose down

# Build image to local development
build-local:
  docker compose build --no-cache

# clean
clean:
  docker compose down --rmi all --volumes --remove-orphans

# Tail containers' logs
logs:
  docker compose logs -f

# Check containers status
ps:
  docker compose ps
