<script setup lang="ts">
// Hier muss kein Router mehr importiert oder erstellt werden!
import {ElButton, ElAvatar} from "element-plus";
import Logo_home from "@/small_components/Logo_home.vue";
const circleUrl = '/images/avatar.jpg';
</script>

<template>
  <div class="container">
    <Logo_home />
    <el-avatar class="avatar" :size="50" :src="circleUrl" />
  </div>
  <main>
    <RouterView />
  </main>
  <p><strong>Current route path:</strong> {{ $route.fullPath }}</p>
  <nav>
    <RouterLink to="/">Go to Home</RouterLink> |
    <RouterLink to="/about">Go to About</RouterLink> |
    <RouterLink to="/plants">Go to Plants</RouterLink> |
    <RouterLink to="/data">Go to Data</RouterLink> |
    <RouterLink to="/enterCode">Go to reset Code</RouterLink> |
    <RouterLink to="/login">Go to Login</RouterLink>
  </nav>
</template>
<style scoped>
.container {
  display: flex;
  flex-direction: row;
  align-items: center;
  width: 100%;
  background-color: #629584;
  height: 60px;
  justify-content: center;
}
.avatar {
  position: absolute;
  right: 10px;
}
</style>