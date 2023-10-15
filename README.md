# replit-keep-alive
A solution to run a repl in replit forever, such as  a discord bot or whatever, without the need of external tools like UptimeRobot

# Usage
To keep your script running, add the following line to your .replit file (or update the line if it already exists):<br>
`run = "curl -o- https://raw.githubusercontent.com/qwerdenkerXD/replit-keep-alive/master/run_forever.sh | bash -s -- <RUN_COMMAND> ..."`<br>

e.g. for my example repl [keep_alive_example](https://replit.com/@qwerdenkerXD/keepaliveexample) it is:<br>
`... | bash -s -- python main.py`

All script arguments are gonna be interpreted as command line call, so passing args to scripts is no problem. Here it would be:<br>
`... python main.py arg1 arg2 arg3`

You need to add python to your repl because it's used to host the keep-alive-server.<br>
If you serve a custom server by yourself, like [here](https://replit.com/@qwerdenkerXD/gus), this is not necessary. But if you serve it with python, it may not work. This needs to be workarounded, so feel free to contribute.

Then hit `Run` and you are done.<br>
That's it, no external tools needed, the repl keeps itself alive forever.<br>
Cheers
