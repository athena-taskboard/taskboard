# Taskboard

## Local Development

1. Checkout `taskboard` (this one) and `nodebb` (https://github.com/nodebb/nodebb) repos.
2. Link the nodebb repo to the nodebb-theme-athena directory in this repo by running `npm link ../taskboard/lib/*` in your nodebb local repo.
3. Install and run `redis-server`
4. Run nodebb `./nodebb dev`