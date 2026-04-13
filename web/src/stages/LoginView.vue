<script setup lang="ts">
  import {ref} from "vue";
  import {ElInput, ElButton, ElIcon} from "element-plus";
  import {User} from "@element-plus/icons-vue";

  const pw = ref();
  const username = ref();
  const login_path = ref('/login');

  const login_result =ref("");


  async function login(){
    const req = await  fetch('http://localhost:8080/api/login', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({email: username.value, password: pw.value})
    })
    login_result.value = await req.text();
    localStorage.setItem('token', login_result.value);
  }

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
      <el-button @click="login()" class="login-button" type="primary">Login</el-button>
      <pre>{{login_result}}</pre>
      <div style="display: flex; gap: 7px; justify-content: center">
        <a class="linkToReset" @click="$router.push('/resetPassword')">reset password</a>
        <p style="color: #409EFF; margin: 0">|</p>
        <a @click="$router.push('/register')" class="linkToReset">register</a>
      </div>
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
  .linkToReset{
    color: #409EFF;
    cursor: pointer;
  }
</style>