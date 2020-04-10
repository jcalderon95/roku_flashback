export default {
    name: "ManageUsers",

    template: `
    <div>
    
        <h1>Manage Users</h1>

        <div id="allUsers">

            <div v-for="(user, index) in userList" :key="index">
                <img :src="'images/users/' + user.avatar" >
                <p>{{ user.userfname }}</p>
                <button @click="navToEditUser(user)">Edit</button>
                <button @click="deletUser(user)">Delete</button>
            </div>
            
            <div>
 
                <img src="images/add.svg" alt="Add Button Image" width="50px" @click="navToAddUser">
                <h3>Add User</h3>
            </div>

            
        </div>
    </div>
    `,

    created: function () {
		this.fetchAllUsers();
    },
    
    updated: function(){

        // this.fetchAllUsers();
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
        
        navToAddUser(){
            this.$router.push({ name: "addUser" });
        },

        navToEditUser(user){
            this.$router.push({ name: "editUser", params: { currentuser: user } });
        },

        deletUser(user){

            let url = `./admin/admin_deleteuser.php?id=${user.id}`;

            fetch(url, {
                method: 'DELETE'
            })
            .then(res => res.json())
            .catch((err) => console.log(err))

		    this.fetchAllUsers();
        }
        
    }
}