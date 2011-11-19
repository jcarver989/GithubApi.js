Github = (($) ->
  exports = {}

  class API 
    @base_url: "https://api.github.com"

    @get: (path, callback) ->
      $.getJSON "#{@base_url}#{path}?callback=?", (response) ->
        callback(response)

    @get_members: (org, callback) ->
      @get("/orgs/#{org}/public_members", (response) ->
        callback(response.data)
      )

    
    @get_repos: (user, callback) ->
      @get("/users/#{user}/repos", (response) ->
        callback(response.data)
      )

    @get_watched: (user, callback) ->
      @get("/users/#{user}/watched", (response) ->
        callback(response.data)
      )

  exports.API = API
  exports
)(jQuery)
