export default {
    name: "EditUser",


    template: `
            <div class="user"  @click="navToUserHome()">
                <img :src="'images/users/' + liveuser.avatar " >
                <p>{{ liveuser.userfname }}</p>
            </div>

        `,


}