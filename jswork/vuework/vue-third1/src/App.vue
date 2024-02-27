<template>
  <div>
    <div class="menu">
      <!-- <a v-for="header in 3" :key="header">Home</a> -->
      <a v-for="menu in menus" :key="menu">{{menu}}</a>
    </div>
  
    <div class="celeb" v-for="(agency,key) in agencys" :key="key">
      <img :src="agency.imgSrc">
      <h3>{{ agency.name }}</h3>
      <p>{{ agency.company }}</p>
      <button @click="onClickLikes(key)">좋아요</button>
      <span>좋아요:{{agency.likes}}</span>
    </div>
  

  
  </div>
  </template>
  
  <script>
  export default {
    data () {
      
  
      return {
  
        menus:['Home', 'Celeb', 'About'],
        // celeb:['김영광', '최지우', '고준희', '누구임', '수지'],
        // likes:0,
        agencys:[{name:'김영광',company:'하이브',likes:0,imgSrc:require('./assets/images/3.jpg')},
        {name:'최지우',company:'SM',likes:0,imgSrc:require('./assets/images/5.jpg')},
        {name:'고준희',company:'JYP',likes:0,imgSrc:require('./assets/images/11.jpg')},
        {name:'누구지',company:'FNC',likes:0,imgSrc:require('./assets/images/16.jpg')},
        {name:'수지',company:'하이브',likes:0,imgSrc:require('./assets/images/19.jpg')}
        ],
      }
    },
    methods:{
      onClickLikes(num){
        this.agencys[num].likes++;
      }

    }
  }
  </script>
  
  <style lang="css" scoped>
  
    .menu{
      background-color: blueviolet;
      padding: 10px;
      border-radius: 5px;
    }
  
    .menu a{
      color: white;
      padding: 10px;
    }
  
    .celeb img{
      width: 150px;
      border-radius: 10px;
    }
  
  
  </style>