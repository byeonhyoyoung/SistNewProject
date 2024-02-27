<template>
<div>
  <div class="menu">
    <!-- <a v-for="header in 3" :key="header">Home</a> -->
    <a v-for="menu in menus" :key="menu">{{menu}}</a>
  </div>

  <div class="celeb">
    <img src="@/assets/images/3.jpg">
    <h3>{{ celeb[0] }}</h3>
    <p>소속사: 하이브</p>
    <button @click="likes++">좋아요</button>
    <span>좋아요:{{likes}}</span>
  </div>

  <!-- <div class="celeb">
    <img src="@/assets/images/5.jpg">
    <h3>{{ celeb[1] }}</h3>
    <p>소속사: SM</p>
    <button @click="likes++">좋아요</button>
    <span>좋아요:{{likes}}</span>
  </div>

  <div class="celeb">
    <img src="@/assets/images/11.jpg">
    <h3>{{ celeb[2] }}</h3>
    <p>소속사: JYP</p>
    <button @click="likes++">좋아요</button>
    <span>좋아요:{{likes}}</span>
  </div>

  <div class="celeb">
    <img src="@/assets/images/16.jpg">
    <h3>{{ celeb[3] }}</h3>
    <p>소속사: FNC</p>
    <button @click="likes++">좋아요</button>
    <span>좋아요:{{likes}}</span>
  </div> -->

</div>
</template>

<script>
export default {
  data () {
    

    return {

      menus:['Home', 'Celeb', 'About'],
      // celeb:['김영광', '최지우', '고준희', '누구임', '수지'],
      // likes:0,
    }
  }
}
</script>

<style lang="scss" scoped>

  .menu{
    background-color: blueviolet;
    padding: 10px;
    border-radius: 5px;
  }

  .menu a{
    color: white;
    padding: 10px;
  }



</style>