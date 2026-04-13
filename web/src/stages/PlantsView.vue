<script setup lang="ts">
import {ElIcon, ElCard, ElRow, ElCol, ElStatistic } from "element-plus";
import {Plus} from "@element-plus/icons-vue";
import {ref} from "vue";
const usrPlants = ref({
})

async function getUserPlantData(){
  const token = localStorage.getItem('token')
  if(token) {
    fetch('http://localhost:8080/api/plantData', {
      method: 'GET',
      headers: {
        'Authorization': `Bearer ${token}`
      }
    })
        .then(response => {
          if (!response.ok) {
            throw new Error('Network response was not ok');
          } else {
            usrPlants.value = response.json();
          }
    })
  }
}
await getUserPlantData();
const fallbackPlantSrc = '/images/fallbackPlant.png';
</script>

<template>
  <div class="dashboard-wrapper">
    <div class="page-header">
      <h1>My Garden</h1>
    </div>

    <el-row :gutter="20">
      <el-col
          v-for="(plant, key) in usrPlants"
          :key="key"
          :xs="24" :sm="12" :md="8" :lg="8"
          class="grid-col"
      >
        <el-card shadow="hover" class="plant-card" @click="$router.push(`/data`)">
          <template #header>
            <div class="card-header">
              <span class="plant-name">{{ plant.name }}</span>
              <img style="width: 120px" :src="plant.imgSrc.length>0?plant.imgSrc:fallbackPlantSrc" alt="Plant Image" class="plant-image" />
              <el-tag size="small">{{ plant.type }}</el-tag>
            </div>
          </template>

          <div class="stats-grid">
            <el-statistic title="Temp" :value="plant.sensorData.temperature" suffix="°C" />
            <el-statistic title="Humidity" :value="plant.sensorData.humidity" suffix="%" />
            <el-statistic title="Moisture" :value="plant.sensorData.moisture" suffix="%" />
          </div>
        </el-card>
      </el-col>
      <div style="margin: 10px">
      <el-card style="background-color: white" shadow="hover" class="plant-card" @click="$router.push(`/addPlant`)">
        <template #header>
          <div class="card-header">
            <span class="plant-name">new Plant</span>
          </div>
        </template>
        <div style="display: flex; justify-content: center; align-items: center; height: 100%;">
          <el-icon class="el-icon--right">
            <Plus></Plus>
          </el-icon>
          <img style="width: 50px" :src="fallbackPlantSrc" alt="Plant Image" class="/images/plant-image" />
        </div>

      </el-card>
      </div>
    </el-row>
  </div>
</template>

<style lang="scss" scoped>
.page-header {
  display: flex;
}
.dashboard-wrapper {
  padding: 20px;
  min-height: 100vh;

  h1 {
    margin-bottom: 30px;
    color: var(--el-text-color-primary);
  }
}

.grid-col {
  margin-bottom: 20px; // Spacing between rows
}

.plant-card {
  border-radius: 12px;
  cursor: pointer;

  .card-header {
    display: flex;
    justify-content: space-between;
    align-items: center;

    .plant-name {
      font-weight: bold;
      font-size: 1.1rem;
    }
  }

  .stats-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 10px;
    text-align: center;

    // Scss nesting to style Element's internal classes
    :deep(.el-statistic__content) {
      font-size: 1.2rem;
      color: var(--el-color-primary);
    }
  }
}
</style>