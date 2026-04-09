<script setup lang="ts">
import {ElButton} from "element-plus";
</script>
<template>
  <div style="display: flex; flex-direction: column; justify-content: center; align-items: center; padding-top: 20px">
    <h3 style="margin: 0">No more dry leaves!✨</h3>
    <p>A simple way to monitor the vital values of your plant</p>
  </div>
  <div style="width: 100%; display: flex; justify-content: center; align-items: center;">
    <img style="height: 60vh" src="/images/home_picture.jpg" alt="Home Image" />
  </div>
  <div style="display: flex; justify-content: center; align-items: center; padding-top: 50px">
    <el-button type="primary" @click="$router.push('/login')">login</el-button>
    <el-button @click="$router.push('/login')">register</el-button>
  </div>
</template>