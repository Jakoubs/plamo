import { createApp } from 'vue'
import { createRouter, createWebHistory } from 'vue-router'
import App from './App.vue'
import HomeView from './HomeView.vue'
import AboutView from './AboutView.vue'
import LoginView from "@/LoginView.vue";
import DataView from "@/DataView.vue";
import PlantsView from "@/PlantsView.vue";

const routes = [
    { path: '/', component: HomeView },
    { path: '/about', component: AboutView },
    { path: '/login', component: LoginView},
    { path: '/login', component: LoginView},
    { path: '/data', component: DataView},
    { path: '/plants', component: PlantsView},
]

const router = createRouter({
    // createWebHistory sorgt dafür, dass die URL im Browser mitwandert
    history: createWebHistory(),
    routes,
})

createApp(App).use(router).mount('#app')