# Javascript

### callback

```
# This method takes a callback
fetchStateByCountry: function(country,callback) {
    axios.get(api_endpoint+'/countries/'+country)
        .then(function (response) {
            callback(response.data)
        })
        .catch(function (error) {
            this.errors.push('State for '+country+' failed to fetch '+ error.message)
        })
}

# call this method and grab the value
fetchStateByCountry('India',(states) => {
   // use states where ever you want
    console.log(states)
})

```
