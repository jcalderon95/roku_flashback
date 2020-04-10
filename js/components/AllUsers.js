export default {
    name: "AllUsers",

    template: `
	<div id="allUsers">

		<div v-for="(user, index) in userList" :key="index" @click="navToUserHome(user)">
			<img :src="'images/users/' + user.avatar" class="rounded-circle img-fluid">
			<p>{{ user.userfname }}</p>
		</div>

    </div>
    `,

    created: function () {
		this.fetchAllUsers();
	},

	data() {
		return {
			userList: []
		}
	},

	methods: {
		fetchAllUsers() {
			let url = './admin/admin_getusers.php?allusers=true';

			fetch(url) 
			.then(res => res.json())
			.then(data => this.userList = data)
			.catch((error) => console.error(error))
		},

		navToUserHome(user){

			if (user.permissions === 1 || user.permissions === "1") {
                this.$router.push({ name: "kids" })
            }  else if (user.permissions > 1 || user.permissions > "1") {
                this.$router.push({ name: "adults" })
            }
            
            localStorage.setItem("cachedUser", JSON.stringify(user));
            this.$emit("shownav", user);
		}
    }
}