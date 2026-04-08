<script setup lang="ts">

import {ElButton} from "element-plus";
</script>

<template>
  <el-button style="background-color: transparent; border: transparent" @click="$router.push('/')">
    <h1 class="title">Plamo🌱</h1>
  </el-button>
</template>

<style scoped>
.title {
  font-family: Bricolage Grotesque, sans-serif;
  align-items: center;
  justify-content: center;
  font-size: 40px;
  color: white;
}
</style>