# Diagramming a web app to uncover ignorance

Uncovering ignorance is good! It allows you to increase your understanding by researching or experimenting.

Diagrams are good! As your understanding increases, you can add more and more detail to them.

## Instructions

1. Get into your pairs.

2. Spend 30 minutes diagramming a request and response cycle of your Bookmark Manager app.  For example, you could diagram an already logged-in user going to the home page `/` and seeing a list of their bookmarks.

3. We'll gather back together and quickly discuss your diagrams.  We'll look for places in your diagrams that have uncovered ignorance about a process or thing.

4. You'll get back in your pairs, research an area of ignorance and augment your diagrams with what you learn.

### Some code and data snippets that might appear in your diagram

```
GET /
```

```
@links = Link.all
```

```
<% @links.each do |link| %>
  <%= link.url   %>
<% end %>
```

```
SELECT * FROM links;
```

### Some labels or boxes that might appear in your diagram

Feel free to add lots more!

* Model
* View
* Controller
* Browser
* ERB Ruby class
* Database
* DataMapper gem
