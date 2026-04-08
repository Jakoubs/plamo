<script setup lang="ts">
// Hier muss kein Router mehr importiert oder erstellt werden!
import {ElButton, ElAvatar, ElDialog} from "element-plus";
import Logo_home from "@/small_components/Logo_home.vue";
import { useRouter } from "vue-router";
import {ref} from "vue";
const circleUrl = '/images/avatar.jpg';
const dialogVisible = ref(false);
function handleClick() {
  dialogVisible.value = true;
}
const router = useRouter();
function logout(){
  dialogVisible.value = false
  router.push('/login')
}
</script>

<template>
  <div class="container">
    <Logo_home />
    <el-avatar @click="handleClick()" class="avatar" :size="50" :src="circleUrl" />
    <el-dialog
        v-model="dialogVisible"
        title="Account"
        width="500"
    >
      <span>here could be some Account settings</span>
      <template #footer>
        <div class="dialog-footer">
          <el-button @click="dialogVisible = false">Cancel</el-button>
          <el-button type="primary" @click="logout()">
            logout
          </el-button>
        </div>
      </template>
    </el-dialog>
  </div>
  <main>
    <RouterView />
  </main>
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
  cursor: pointer;
}
</style>