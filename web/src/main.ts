import { createApp } from 'vue'
import { createRouter, createWebHistory } from 'vue-router'
import App from './App.vue'
import HomeView from './stages/HomeView.vue'
import LoginView from "@/stages/LoginView.vue";
import DataView from "@/stages/DataView.vue";
import PlantsView from "@/stages/PlantsView.vue";
import ResetPasswordView from "@/stages/ResetPasswordView.vue";
import EnterCode from "@/stages/EnterCode.vue";
import 'element-plus/dist/index.css'
import NewPlant from "@/stages/NewPlant.vue";
import Register from "@/stages/Register.vue"; // Keep the default styles
const routes = [
    { path: '/', component: HomeView },
    { path: '/login', component: LoginView},
    { path: '/login', component: LoginView},
    { path: '/data', component: DataView},
    { path: '/plants', component: PlantsView},
    { path: '/resetPassword', component: ResetPasswordView},
    { path: '/enterCode', component: EnterCode},
    { path: '/addPlant', component: NewPlant},
    { path: '/register', component: Register},
]

const router = createRouter({
    // createWebHistory sorgt dafür, dass die URL im Browser mitwandert
    history: createWebHistory(),
    routes,
})

createApp(App).use(router).mount('#app')