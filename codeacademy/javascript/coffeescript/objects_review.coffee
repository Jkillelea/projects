james = {
  job: "programmer"
  married: false
}

Person = (job, married) ->
  this.job     = job
  this.married = married
  return

# create a "gabby" object using the Person constructor!
gabby = new Person("student", true);
