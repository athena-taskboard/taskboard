# Taskboard

Taskboard is a forum website which uses the open source project NodeBB to provide a platform where medical professionals can vote on our ideas and leave their own ideas to guide the response of Project Athena to COVID-19 with focus and efficiency.

## Local Development

1. Checkout `taskboard` (this one) and `nodebb` (https://github.com/nodebb/nodebb) repos.
2. Link the nodebb repo to the nodebb-theme-athena directory in this repo by running `npm link ../taskboard/lib/*` in your nodebb local repo.
3. Install and run `redis-server`
4. Run nodebb `./nodebb dev`