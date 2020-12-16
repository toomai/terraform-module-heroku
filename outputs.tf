output "location" {
    value = github_repository.my_awesome_repo.web_url
}

output "uid" {
    value = heroku_app.my_awesome_app.uuid
}

output "id" {
    value = heroku_app.my_awesome_app.id
}