james = {
  job: 'programmer'
  married: false
  speak: (condition) ->
    console.log "Hello, I am feeling #{condition}"
    return
  sayJob: (job) ->
    console.log "Hi, I work as a #{this.job}"
    return

}

aProperty = 'job'

console.log james[aProperty]
