resource "heroku_app" "my_awesome_app" {
  name   = var.app_name
  region = "eu"
  buildpacks = [
      "heroku/python"
  ]
  config_vars = {
    FOOBAR = "baz"
  }
}

resource "heroku_build" "my_awesome_build" {
    app = heroku_app.my_awesome_app.id
    buildpacks = ["https://github.com/heroku/heroku-buildpack-python.git"]
    source = {
        url = "https://github.com/heroku/python-getting-started/archive/main.tar.gz"
        version = var.app_version
    }
}