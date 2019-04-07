# Post Api Practice

1. Post index
```console
curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://localhost:3000/posts
```

```json
[{"id":1,"title":"That goddamn Datamate","body":"Always pass on what you have learned.","created_at":"2019-04-07T07:44:27.816Z","updated_at":"2019-04-07T07:44:27.816Z"},{"id":2,"title":"How 'bout them Cowboys","body":"Mudhole? Slimy? My home this is!","created_at":"2019-04-07T07:52:58.508Z","updated_at":"2019-04-07T07:52:58.508Z"},{"id":3,"title":"Like a red-headed stepchild","body":"Luminous beings are we - not this crude matter.","created_at":"2019-04-07T08:08:25.602Z","updated_at":"2019-04-07T08:08:25.602Z"}]
```

2. Post create

```console
curl --data "post[title]=Like a red-headed stepchild&post[body]=Luminous beings are we - not this crude matter." http://localhost:3000/posts
```

```json
{"id":5,"title":"Like a red-headed stepchild","body":"Luminous beings are we - not this crude matter.","created_at":"2019-04-07T09:18:30.271Z","updated_at":"2019-04-07T09:18:30.271Z"}
```

3. Post show
```console
curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://localhost:3000/posts/2
```

```json
{"id":2,"title":"How 'bout them Cowboys","body":"Mudhole? Slimy? My home this is!","created_at":"2019-04-07T07:52:58.508Z","updated_at":"2019-04-07T07:52:58.508Z"}
```

4. PATCH post
```console
curl -X PATCH -d "post[body]=Good relations with the Wookiees, I have." localhost:3000/posts/5
```

```json
{"id":5,"body":"Good relations with the Wookiees, I have.","title":"Like a red-headed stepchild","created_at":"2019-04-07T09:18:30.271Z","updated_at":"2019-04-07T09:22:19.717Z"}
```

5. DELETE post
```console
curl -i -X DELETE localhost:3000/posts/5
```

```json
"no_content"
```


