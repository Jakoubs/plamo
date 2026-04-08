<script setup lang="ts">
  import {ref} from "vue";
  import {ElInput, ElButton, ElIcon} from "element-plus";
  import {User} from "@element-plus/icons-vue";

  const pw = ref();
  const username = ref();
</script>

<template>
  <form>
    <div class="login-fields">
      <el-icon class="user-icon">
        <User></User>
      </el-icon>
      <div class="username">
        <el-input
            v-model="username"
            clearable>
        <template #prepend>Username</template>
        </el-input>
      </div>
      <div class="password">
        <el-input
            v-model="pw"
            type="password"
            placeholder="Please input password"
            show-password
            >
          <template #prepend>Password</template>
          </el-input>
      </div>
      <el-button @click="$router.push('/plants')" class="login-button" type="primary">Login</el-button>
      <a href="resetPassword">reset password</a>
    </div>
  </form>
</template>
<style scoped>
.user-icon{
  font-size: 80px;
}
  .login-fields{
    display: flex;
    flex-direction: column;
    gap: 10px;
    width: 440px;
    margin: 200px auto 0;
    align-items: center;
  }
  .username{
    display: flex;
    flex-direction: row;
    gap: 10px;
  }
  .password{
    display: flex;
    flex-direction: row;
    gap: 10px;
  }
  .login-button{
    width: 200px;
  }
</style>