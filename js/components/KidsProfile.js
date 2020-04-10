
export default {
    name: "Kids",

    template: `
    <div id="allUsers">
		<h1>Kids Profile</h1>
		
		<button>Movies</button>
		<button>Series</button>
		<button>Audio</button>
    </div>
    `,

    created: function () {
		// this.fetchAllUsers();
	},

	// data() {
	// 	return {
	// 		userList: []
	// 	}
	// },

	methods: {
		// fetchAllUsers() {
		// 	let url = './admin/admin_getusers.php?allusers=true';

		// 	fetch(url) 
		// 	.then(res => res.json())
		// 	.then(data => this.userList = data)
		// 	.catch((error) => console.error(error))
		// }
    }
}