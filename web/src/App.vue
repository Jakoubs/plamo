<script setup lang="ts">
// Hier muss kein Router mehr importiert oder erstellt werden!
</script>

<template>
  <div class="container">
    <h1 class="title">Plamo🌱</h1>
  </div>
  <p><strong>Current route path:</strong> {{ $route.fullPath }}</p>
  <nav>
    <RouterLink to="/">Go to Home</RouterLink> |
    <RouterLink to="/about">Go to About</RouterLink> |
    <RouterLink to="/plants">Go to Plants</RouterLink> |
    <RouterLink to="/data">Go to Data</RouterLink> |
    <RouterLink to="/login">Go to Login</RouterLink>
  </nav>
  <main>
    <RouterView />
  </main>
</template>
<style scoped>
.title {
  font-family: Bricolage Grotesque, sans-serif;
  align-items: center;
  justify-content: center;
  font-size: 40px;
  color: white;
}
.container {
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 100%;
  background-color: #629584;
}
</style>