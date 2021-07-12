## Vue Component in the index.html

```
<html>
   ...
   <button-counter v-bind="extValue"></button-counter>
   ...
   
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

</script>
```
