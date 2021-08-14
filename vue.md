## Vue Component in the index.html

```
<html>
   <div id="app">
    ...
    <button-counter v-bind="extValue"></button-counter>
    ...
   <div>
   <template id="template-1">
      <button v-on:click="count++">You clicked mee {{ count }} times. {{extValue}}</button>
   </template>
   
</html>
<script src="static/vue.js"></script>
<script>
   Vue.component('button-counter', {
      props: ['extValue']
      data: function () {
          return {
              count: 0
          }
      },
      template: '#template-1'
    })
    
    var app = new Vue({
        el: '#app',
        data: {
          message: 'Hello World'
        },
        methods: {
          init: function() {
             ....
          }
        },
        created: function() {
          this.init()
        }
    })

</script>
```

## execute Hello.vue

** Hello.Vue
```
<template>
  ...
</template>
<style scoped>
  ...
</style>
<script>
  ...
</script>
```
- Install Vue CLI
- run
```
vue serve Hello.vue
```

## Implement search/filter box in vue

*js*

```
const app = new Vue({

  el: '#app',

  data: {
     search: '',
     items: [
       {name: 'Stackoverflow', type: 'development'},
       {name: 'Game of Thrones', type: 'serie'},
       {name: 'Jon Snow', type: 'actor'}
     ]
  },

  computed: {
    filteredItems() {
      return this.items.filter(item => {
         return item.type.toLowerCase().indexOf(this.search.toLowerCase()) > -1
      })
    }
  }

})
```

*html*

```
<div id="app">

    <div v-for="item in filteredItems" >
      <p>{{item.name}}</p>
    </div>

    <input type="text" v-model="search">

  </div>
```

# call parent method from vue component
```
   this.$parent.init()
```
or follow [stackoverflow](https://stackoverflow.com/questions/46208610/call-parent-method-with-component/46210210)  
