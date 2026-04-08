<script setup lang="ts">

  import {ref} from "vue";
  import {routes} from "vue-router/auto-routes";
  import {RouterLink} from "vue-router";
  import {ElInput, ElButton} from "element-plus";
  import {useRouter} from "vue-router";
  const router = useRouter();

  const mail = ref('')
  const showError = ref(false);
  function enterMail(){
    if(!mail.value.includes('@')){
      showError.value = true;
    } else {
      router.push('/enterCode')
    }
  }
</script>

<template>
  <div class="input-container">
    <div class="input-field">
      <div class="username">
        <el-input
            class="username-input"
            v-model="mail"
            clearable>
          <template #prepend>e-mail</template>
        </el-input>
      </div>
      <el-button class="enter-button" type="primary" @click="enterMail()">send code</el-button>
      <p>Enter your email to reset your password</p>
      <p v-if="showError" class="error">Email format is not valid</p>
    </div>
  </div>
</template>

<style scoped>
.error{
  color: darkred;
}
  .input-container{
    display: flex;
    flex-direction: column;
    width: 350px;
    margin: 200px auto 0;
  }
  .input-field{
    display: flex;
    flex-direction: column;
    align-items: center;
  }
  .username{
    margin-bottom: 10px;
  }
  .enter-button{
    width: 200px;
  }
</style>