output "location" {
    value = heroku_app.my_awesome_app.web_url
}

output "uid" {
    value = heroku_app.my_awesome_app.uuid
}

output "id" {
    value = heroku_app.my_awesome_app.id
}