import LoginComponent from "./LoginComponent.js";
import AllUsers from "./AllUsers.js";


const routes = [
      { path: '/', redirect: { name: "login" } },
      { path: '/login', name: "login", component: LoginComponent },
      { path: '/users', name: "users", component: AllUsers }

]

const router = new VueRouter({
    // mode: "history",
    routes
})

export default router
