<template>
  <div id="app">
    <div class="search">
      <div style="float:left;">
        <input style="line-height: normal;"  maxlength="20"   type="text" v-model="val" id="ipt" @input="int"/>
      </div>
      <div style="float:left;" class="find" @click="jump1">百度一下</div>
      <div class="cont" v-if="this.val.length>0">
        <p v-for="(item,index) in items" :key="index" @click="jump(item.url)">{{item.name}}</p>
      </div>
    </div>

    <item></item>
        <total></total>
    <router-view />
  </div>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;

  color: #2c3e50;
}

.search {
  width: 230px;
  height: 150px;
  margin: auto;
  position: relative;
  cursor: pointer;
}
.search .find {
  width: 50px;
  height: 22px;
  line-height: 22px;
  color: white;
  background-color: blue;
  font-size: 7px;
  font-weight: bold;
  text-align: center;
}

.search .cont {
  width: 163px;
  height: 120px;
  border: 1px solid blue;
  position: absolute;
  top: 22px;
}
.search .cont p {
  margin-top: 15px;
  font-size: 7px;
}

</style>
<script>

import Item from "./components/Item";
import Total from "./components/Total";

export default {
  
  components: {

    Total,
    Item
  },

  methods: {
// 输入内容时的事件
 int() {
        this.items=[]
     this.arr.forEach(data=>{
  if(data.name.includes(this.val)){
    // 判断后台数据内是否包含输入的内容
this.items.push(data)
  }
     })
    },
jump(i){
  window.location.href=i
  // 跳转
},
jump1(){
   this.arr.forEach(data=>{
if(this.val==data.name){
  // 如果输入的内容等于后台数据的某一个名字时可以跳转
   window.location.href=data.url
}

   })

}
 
  },
  data() {
    return {
      items: [],
      val:'',
        arr: [
                    {
                        id: 1,
                        name: '张三',
                        url: 'https://baike.baidu.com/item/%E5%BC%A0%E4%B8%89/76379?fr=aladdin'
                    },
                    {
                        id: 2,
                        name: '张三丰',
                        url: 'https://baike.baidu.com/item/%E5%BC%A0%E4%B8%89%E4%B8%B0/246794?fr=aladdin'
                    },
                    {
                        id: 3,
                        name: '苹果官网',
                        url: 'https://www.apple.com.cn/?afid=p238%7CK2sYmhiE_mtid_18707vxu38484&cid=aos-cn-kwba-brand-bz'
                    },
                    {
                        id: 4,
                        name: '李宁官网',
                        url: 'https://store.lining.com/?cmpid=11790_0001'
                    }

                ],
    };
  }
};
</script>