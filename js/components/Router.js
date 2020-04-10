import LoginComponent from "./LoginComponent.js";
import AllUsers from "./AllUsers.js";
import AdultsProfile from "./AdultsProfile.js";
import KidsProfile from "./KidsProfile.js";


const routes = [
      { path: '/', redirect: { name: "login" } },
      { path: '/login', name: "login", component: LoginComponent },
      { path: '/users', name: "users", component: AllUsers },
      { path: '/home-adults', name: "adults", component: AdultsProfile },
      { path: '/home-kids', name: "kids", component: KidsProfile }
]

const router = new VueRouter({
    // mode: "history",
    routes
})

export default router
