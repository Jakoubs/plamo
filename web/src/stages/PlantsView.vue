<script setup lang="ts">
import { ElCard, ElRow, ElCol, ElStatistic } from "element-plus";

const usrPlants = {
  plant1: { name: 'Fiddle Leaf', type: 'Tree', imgSrc: '/images/FiddleLeaf.png', sensorData: { temperature: 20, humidity: 50, moisture: 32 } },
  plant2: { name: 'Snake Plant', type: 'Succulent', imgSrc: '/images/Spider.png', sensorData: { temperature: 25, humidity: 60, moisture: 28 } },
  plant3: { name: 'Monstera', type: 'Climber',imgSrc: '/images/Monstera.png', sensorData: { temperature: 22, humidity: 45, moisture: 35 } },
  plant4: { name: 'Peace Lily', type: 'Flower',imgSrc: '/images/PeaceLily.png', sensorData: { temperature: 28, humidity: 55, moisture: 22 } },
  plant5: { name: 'Pothos', type: 'Vine', imgSrc: '/images/Photos.png', sensorData: { temperature: 23, humidity: 48, moisture: 37 } },
  plant6: { name: 'Spider Plant', type: 'Herb', imgSrc: '/images/SpiderPlant.png', sensorData: { temperature: 26, humidity: 52, moisture: 25 } }
}
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