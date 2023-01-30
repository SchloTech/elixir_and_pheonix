FROM elixir:latest

# Set the working directory for subsequent commands
WORKDIR /app/cards

# Install dependencies
RUN mix local.hex --force && mix local.rebar --force
RUN mix deps.get

# Compile the application
# RUN mix compile

# Run the application
# CMD ["mix", "run", "--no-halt"]

VOLUME ["/app"]