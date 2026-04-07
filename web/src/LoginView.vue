<script setup lang="ts">

</script>

<template>
  <form>
    <div class="login-fields">
      <div class="username">
        Username:
        <input>
      </div>
      <div class="password">
        Password:
        <input type="password">
      </div>
      <a href="vue-router">reset password</a>
    </div>
  </form>
</template>
<style scoped>
  .login-fields{
    display: flex;
    flex-direction: column;
    width: 250px;
    gap: 10px;
    margin: 20px;
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
</style>