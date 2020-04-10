
export default {
    name: "AdultsProfile",

    template: `
    <div id="AdultsProfile">
		<h1>Adutls Profile</h1>

		<div class="filterButtons">
			<button @click="fetchVideo()">Movies</button>
			<button @click="fetchSeries()">Series</button>
			<button @click="fetchAudio()">Audio</button>
		</div>

		<div v-if="showPlayer" class="player">
			<h2>Showing: {{ currentMediaItem.Title }}</h2>
		</div>

		<div class="mediaCon">
			<div class="mediaItem" v-for="item in media" @click="showItem(item)">
				<h2>{{ item.Title }}</h2>
			</div>
		</div>
    </div>
    `,

    created: function () {
		this.fetchVideo();
	},

	data() {
		return {
			media: [],
			showPlayer: false,
			currentMediaItem: []
		}
	},

	methods: {
		fetchVideo() {
			let url = './admin/index.php?media=Movie';

			fetch(url) 
			.then(res => res.json())
			.then(data => this.media = data)
			.catch((error) => console.error(error))
		},

		fetchSeries() {
			let url = './admin/index.php?media=Series';

			fetch(url) 
			.then(res => res.json())
			.then(data => this.media = data)
			.catch((error) => console.error(error))
		},

		fetchAudio() {
			let url = './admin/index.php?media=Music';

			fetch(url) 
			.then(res => res.json())
			.then(data => this.media = data)
			.catch((error) => console.error(error))
		},

		showItem(item){
			// console.log(item);
			console.log(item);
			this.currentMediaItem = item;
			this.showPlayer = true;
		}
    }
}