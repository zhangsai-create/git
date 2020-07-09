<template>
  <div class="total" >
      总价:{{total}}元
      <button @click="empty">清除购物车</button>
  </div>
</template>

<script>
import {mapState,mapMutations} from 'vuex'
export default {
computed:{
    ...mapState(['total'])
},
methods:{
       ...mapMutations(['empty'])
}
}
</script>

<style  scoped>
.total{
margin-top: 20px;
    text-align: center;
    font-size: 8px;
}
</style>