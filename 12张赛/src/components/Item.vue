<template>
  <div class="shop">
      <table class="table-bordered ">
          <thead>
              <tr>
                  <th>商品id</th>
                  <th>商品名称</th>
                  <th>商品价格</th>
                  <th>操作</th>
              </tr>
          </thead>
          <thead>
              <tr v-for="(list,index) in lists" :key="index">
                  <td>{{list.id}}</td>
                  <td>{{list.title}}</td>
                  <td>{{list.price}}</td> 
                  <td><button @click="buy(list)">购买商品</button></td>
              </tr>
          </thead>
      </table>
      <table class="table-bordered cart" v-if="contents.length>0" >
          <thead>
              <tr>
                  <th>商品id</th>
                  <th>商品名称</th>
                  <th>商品价格</th>
                  <th>商品数量</th>
                  <th>操作</th>
              </tr>
          </thead>
          <thead>
              <tr v-for="(content,index) in contents" :key="index">
                  <td>{{content.id}}</td>
                  <td>{{content.title}}</td>
                  <td>{{content.price}}</td>
                  <td>{{content.count}}</td>
                  <td><button @click="del(index)">删除</button></td>
              </tr>
          </thead>
      </table>
       <p v-else  style="color:red">购物车为空</p>
  </div>
</template>

<script>
import {mapState, mapMutations} from 'vuex'
export default {
computed:{
  ...mapState(['lists']),
  ...mapState(['contents'])


},
methods:{
    ...mapMutations({
        buy:'add'
    }),
    ...mapMutations(['del']),
 
}

}
</script>
<style scoped>
.shop{
    width: 230px;
    margin: auto;
    text-align: center;
    font-size: 8px;
}

th{
    font-size: 7px;
    text-align: center;


}
.cart{
    margin-top: 20px;
}

</style>
