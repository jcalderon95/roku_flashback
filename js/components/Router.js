import LoginComponent from "./LoginComponent.js";

const routes = [
      { path: '/', redirect: { name: "login" } },
      { path: '/login', name: "login", component: LoginComponent }
]

const router = new VueRouter({
    // mode: "history",
    routes
})

export default router
