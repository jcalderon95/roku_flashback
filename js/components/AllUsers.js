import UserComponent from './UserComponent.js';

export default {
    name: "AllUsers",

    template: `
    <div id="allUsers">
        <div class="row">
            <user v-for="(user, index) in userList" :liveuser="user" :key="index" />
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
		}
    },
    
    components: {
		user: UserComponent
	}
}