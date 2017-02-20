# Profite API

Api básica utilizada para estudos.

* Ruby version: 2.3.3

* Rails version: 5.0.1


# API

## Endpoints

#### Category

* https://profite-study-api.herokuapp.com/api/categories - GET / POST

* https://profite-study-api.herokuapp.com/api/categories/{:id} - GET / PUT / PATCH


#### Product

* https://profite-study-api.herokuapp.com/api/products - GET / POST

* https://profite-study-api.herokuapp.com/api/products/{:id} - GET / PUT / PATCH


## Schemas
```Json
{"entity": {
    "attribute1": "value",
    "attribute2": "value",
  }
}
```

OR

```Json
{
  "attribute1": "value",
  "attribute2": "value",
}
```
## Examples

__Json Format__
```Json
{"product": {
    "name": "Livro Rails 5",
    "description": "Livro que ensina o Framework Rails e permite você desenvolver um site do zero ao deploy usando as melhores técnicas de desenvolvimento.",
    "short_description": "Livro que ensina o Framework Rails",
    "price": 40.00,
    "best_price": 29.99,
    "quantity": 50
  }
}
```

OR

```Json
{
  "name": "Livro Rails 5",
  "description": "Livro que ensina o Framework Rails e permite você desenvolver um site do zero ao deploy usando as melhores técnicas de desenvolvimento.",
  "short_description": "Livro que ensina o Framework Rails",
  "price": 40.00,
  "best_price": 29.99,
  "quantity": 50
}
```

#### JavaScript Examples XHR
__GET__
```JavaScript
var xhr = new XMLHttpRequest();
xhr.open("GET", "https://profite-study-api.herokuapp.com/api/categories", true);
xhr.setRequestHeader("Content-type", "application/json");
xhr.setRequestHeader("Authorization", "Token token=API_TOKEN");
xhr.onreadystatechange = function() {
    if (xhr.readyState == XMLHttpRequest.DONE) {
        console.log(xhr.responseText);
    }
}
xhr.send();
```
----
__POST__

```JavaScript
var data = {
    name: "Categoria js",
    description: "Essa é uma Terceira Categoria enviada por JS"
};
data = JSON.stringify(data);
var xhr = new XMLHttpRequest();
xhr.open("POST", "https://profite-study-api.herokuapp.com/api/categories/{:id}", true);
xhr.setRequestHeader("Content-type", "application/json");
xhr.setRequestHeader("Authorization", "Token token=API_TOKEN");
xhr.onreadystatechange = function() {
    if (xhr.readyState == XMLHttpRequest.DONE) {
        console.log(xhr.responseText);
    }
}
xhr.send(data);
```
----
__PUT__

```JavaScript
var data = {
    name: "Categoria Alterada",
    description: "Essa é uma descrição alterada pelo PUT."
};
data = JSON.stringify(data);
var xhr = new XMLHttpRequest();
xhr.open("PUT", "https://profite-study-api.herokuapp.com/api/categories/{:id}", true);
xhr.setRequestHeader("Content-type", "application/json");
xhr.setRequestHeader("Authorization", "Token token=API_TOKEN");
xhr.onreadystatechange = function() {
    if (xhr.readyState == XMLHttpRequest.DONE) {
        console.log(xhr.responseText);
    }
}
xhr.send(data);
```
----
__PATCH__

```JavaScript
var data = {
    description: "Essa é uma descrição alterada pelo PATCH."
};
data = JSON.stringify(data);
var xhr = new XMLHttpRequest();
xhr.open("PATCH", "https://profite-study-api.herokuapp.com/api/categories/{:id:}", true);
xhr.setRequestHeader("Content-type", "application/json");
xhr.setRequestHeader("Authorization", "Token token=API_TOKEN");
xhr.onreadystatechange = function() {
    if (xhr.readyState == XMLHttpRequest.DONE) {
        console.log(xhr.responseText);
    }
}
xhr.send(data);
```
----
__DELETE__

```JavaScript
var xhr = new XMLHttpRequest();
xhr.open("DELETE", "https://profite-study-api.herokuapp.com/api/categories/{:id}", true);
xhr.setRequestHeader("Content-type", "application/json");
xhr.setRequestHeader("Authorization", "Token token=API_TOKEN");
xhr.onreadystatechange = function() {
    if (xhr.readyState == XMLHttpRequest.DONE) {
        console.log(xhr.responseText);
    }
}
xhr.send(null);
```

## Attributes

#### Category

string   __"name"__  
text     __"description"__  
datetime __"created_at"__,  null: false _(It's an automatic field.)_  
datetime __"updated_at"__,  null: false _(It's an automatic field.)_  

#### Product

string   __"name"__  
text     __"description"__  
string   __"short_description"__  
decimal  __"price"__  
decimal  __"best_price"__  
integer  __"quantity"__  
datetime __"created_at"__,        null: false _(It's an automatic field.)_  
datetime __"updated_at"__,        null: false _(It's an automatic field.)_  
integer  __"category_id"__  
