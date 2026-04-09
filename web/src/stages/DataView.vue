<script setup lang="ts">
import {ElCard,ElIcon, ElCol, ElRow, ElStatistic} from "element-plus";
import {GChart} from "vue-google-charts"
import {Back} from "@element-plus/icons-vue";
 const plant3= { name: 'Monstera', type: 'Climber',imgSrc: '/images/Monstera.png', sensorData: { temperature: 22, humidity: 45, moisture: 35 } }
const sensorData = [
  ['Date', 'Temperature', 'Humidity', 'Moisture'],
  ['2023-01-01', 22.0, 50.7, 65.0],
  ['2023-01-02', 22.5, 56.0, 60.3],
  ['2023-01-03', 22.5, 53.8, 56.4],
  ['2023-01-04', 23.0, 52.0, 52.9],
  ['2023-01-05', 24.1, 53.6, 48.5],
  ['2023-01-06', 23.8, 55.5, 41.7],
  ['2023-01-07', 23.6, 55.6, 37.4],
  ['2023-01-08', 24.7, 48.1, 32.3],
  ['2023-01-09', 25.1, 48.9, 26.5],
  ['2023-01-10', 23.1, 66.8, 81.8],
  ['2023-01-11', 24.8, 53.3, 75.0],
  ['2023-01-12', 24.3, 50.0, 71.0],
  ['2023-01-13', 23.8, 51.8, 66.0],
  ['2023-01-14', 23.9, 48.9, 61.8],
  ['2023-01-15', 22.4, 51.6, 57.7],
  ['2023-01-16', 21.2, 60.0, 54.6],
  ['2023-01-17', 21.0, 62.1, 49.2],
  ['2023-01-18', 20.5, 58.8, 44.2],
  ['2023-01-19', 21.0, 61.0, 41.0],
  ['2023-01-20', 20.5, 60.1, 36.9],
  ['2023-01-21', 19.7, 58.7, 30.3],
  ['2023-01-22', 21.1, 58.9, 26.3],
  ['2023-01-23', 19.6, 77.4, 77.6],
  ['2023-01-24', 21.3, 57.3, 70.7],
  ['2023-01-25', 20.4, 63.9, 66.7],
  ['2023-01-26', 20.3, 51.5, 61.0],
  ['2023-01-27', 20.6, 61.3, 55.0],
  ['2023-01-28', 20.0, 60.3, 51.0],
  ['2023-01-29', 20.6, 57.9, 45.1],
  ['2023-01-30', 20.4, 59.5, 40.6],
  ['2023-01-31', 20.4, 53.2, 35.1],
  ['2023-02-01', 20.2, 58.9, 29.6],
  ['2023-02-02', 20.3, 72.5, 75.4],
  ['2023-02-03', 21.9, 60.6, 69.1],
  ['2023-02-04', 21.2, 56.0, 64.8],
  ['2023-02-05', 22.0, 53.6, 61.1],
  ['2023-02-06', 21.2, 56.1, 57.9],
  ['2023-02-07', 21.5, 59.7, 52.5],
  ['2023-02-08', 20.2, 60.6, 46.8],
  ['2023-02-09', 19.5, 59.4, 43.7],
  ['2023-02-10', 20.0, 61.5, 38.7],
  ['2023-02-11', 20.8, 58.7, 34.8],
  ['2023-02-12', 21.1, 60.7, 29.2],
  ['2023-02-13', 21.2, 55.5, 25.5],
  ['2023-02-14', 19.7, 71.6, 73.6],
  ['2023-02-15', 20.3, 58.2, 66.9],
  ['2023-02-16', 20.1, 55.4, 63.3],
  ['2023-02-17', 20.1, 60.7, 58.9],
  ['2023-02-18', 21.2, 58.4, 55.4],
  ['2023-02-19', 21.6, 56.8, 48.7]
];
let seperateSensorData = []
const headers = sensorData[0]; // ['Date', 'Temperature', 'Humidity', 'Moisture']
const rawData = sensorData.slice(1);

for (let i = 1; i < headers.length; i++) {
  // Erstelle für jeden Sensor ein neues Array
  const chartData = [
    [headers[0], headers[i]], // Füge hier den Header hinzu, z.B. ['Date', 'Temperature']
    ...rawData.map(row => [row[0], row[i]]) // Dann die Daten
  ];
  seperateSensorData.push(chartData);
}
let lastSensorData =[]
for(let i = 0; i < seperateSensorData.length; i++){
  lastSensorData.push([seperateSensorData[i][0][1],seperateSensorData[i][seperateSensorData[i].length-1][1],seperateSensorData[i][seperateSensorData[i].length-1][0]])
}
const windowWidth = window.innerWidth;
</script>
<template>
    <div class="dashboard-wrapper">
      <el-card>
        <el-icon @click="$router.push('/plants')" class="back-icon">
          <Back></Back>
        </el-icon>
        <div class="page-header">
          <h1>{{ plant3.name }}</h1>
        </div>
        <div style="display: flex; width: 100%; gap: 20px;">
          <div class="stats-grid">
            <GChart
                v-for="sensor in seperateSensorData"
                :key="sensor[0][1]"
                type="LineChart"
                :data="sensor"
                :options="{
                  title: sensor[0][1].toString(),
                  curveType: 'function',
                  legend: { position: 'bottom' },
                  width: windowWidth-1050, // Wichtig für die Füllung
                  height: 200    // Optional: Feste Höhe pro Chart
                }"
            />
          </div>
          <div class="stats-grid">
            <GChart
                v-for="sensor in seperateSensorData"
                :key="sensor[0][1]"
                type="LineChart"
                :data="sensor"
                :options="{
                  title: sensor[0][1].toString(),
                  curveType: 'function',
                  legend: { position: 'bottom' },
                  width: windowWidth-1050, // Wichtig für die Füllung
                  height: 200    // Optional: Feste Höhe pro Chart
                }"
            />
          </div>
          <el-card style="display: flex; flex-direction: column; align-content: center;">
            <template #header>
              <div style="display: flex; gap: 10px; align-items: center; justify-content: center;">
                <h3 style="margin: 0">current vitals</h3>
                <p>measured at: {{lastSensorData[0][2]}}</p>
              </div>
            </template>
            <img style="width: 320px; height: 180px" :src="plant3.imgSrc" alt="Plant Image" class="plant-image" />
            <div style="display: flex; flex-direction: row; gap: 20px">
              <div style="display: flex; flex-direction: column;" v-for="data in lastSensorData" class="stats-grid">
                <div style="display: flex; flex-direction: column; align-content: center;">
                  <div class="circle">
                    <h1 style="margin: 0;">{{data[1]}}</h1>
                  </div>
                  <p style="align-self: center">{{data[0]}}</p>
                </div>
              </div>
            </div>
            <div style="display: flex; flex-direction: row; gap: 20px">
              <div style="display: flex; flex-direction: column;" v-for="data in lastSensorData" class="stats-grid">
                <div style="display: flex; flex-direction: column; align-content: center;">
                  <div class="circle">
                    <h1 style="margin: 0;">{{data[1]}}</h1>
                  </div>
                  <p style="align-self: center">{{data[0]}}</p>
                </div>
              </div>
            </div>
          </el-card>
        </div>

      </el-card>
    </div>
  </template>

  <style lang="scss" scoped>
    .page-header {
      display: flex;
      margin-top: 20px;
    }
    .circle {
      clip-path: circle(50px);
      background-color: #629584;
      color: white;
      text-align: center;
      width: 100px;
      height: 100px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
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
        width: 100%;

        // Scss nesting to style Element's internal classes
        :deep(.el-statistic__content) {
          font-size: 1.2rem;
          color: var(--el-color-primary);
        }
      }
    }
    .back-icon{
      position: absolute;
      cursor: pointer;
      font-size: 30px;
    }
  </style>