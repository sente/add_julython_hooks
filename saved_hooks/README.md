
The two hooks appear functionally the same

`curl -X GET -u $USER:$PASS https://api.github.com/repos/sente/imgurstats/hooks/348358` > imgurstats-hook-348358.json
`curl -X GET -u $USER:$PASS https://api.github.com/repos/sente/add_julython_hooks/hooks/625737` > add_julython_hooks-hook-625737.json

The `imgurstats` hook works, but the `add_julython_hooks` hook doesn't.

