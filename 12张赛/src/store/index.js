import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({

  state: {
    lists:[
      {
        id:1,
        title:'苹果11',
        price:4599,
        count:1
      },
      {
        id:2,
        title:'苹果手表s5',
        price:3599,
        count:2
      },
      {
        id:3,
        title:'苹果耳机Airpods2代',
        price:1599,
        count:3
      },
      {
        id:4,
        title:'苹果电脑mac',
        price:7599,
        count:1
      }
    ],
    total:0,
    contents:[]
  },
  mutations: {
    add(state,payload){
      // 购物车价格
   
      state.total+=payload.price
      var itam=state.contents.find(val=>val.id==payload.id)
      if(itam) {
        itam.count+=1
        const i=state.contents.indexOf(itam)
        state.contents.splice(i, 1, itam)
      }else {
        payload.count=1
        state.contents.push(payload)
      }
    },
    del(state,payload){
      state.total-=state.contents[payload].price*state.contents[payload].count
      state.contents.splice(payload,1)
    },
    // 清空
    empty(state) {
    
      state.contents=[]
      state.total=0
    }
  },
  actions: {
  },
  modules: {
  }
})
