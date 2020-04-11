
export default {
    name: "KidsProfile",

    template: `
    <div id="KidsProfile">
		<h1 class="hidden">Kids Profile</h1>
		<div class="hero">
			<img src="images/kids_hero.jpg" alt="Kids Hero Banner" class="heroImage">
		</div>

		<div class="filterButtonsCon">
			<img src="images/kids_movies.png" class="filterButton" @click="fetchVideo()">
			<img src="images/kids_series.png" class="filterButton" @click="fetchSeries()">
			<img src="images/kids_music.png" class="filterButton" @click="fetchAudio()">
		</div>

		<div v-if="showPlayer" class="player">
			<span @click="hidePlayer" >X</span>
			<h2>{{ currentMediaItem.Title }}</h2>
			<h2>Genre: {{ currentMediaItem.Genre }}</h2>
			<h2>{{ currentMediaItem.Year }}</h2>
			<h2>{{ currentMediaItem.Source }}</h2>

			<video v-if="currentMediaItem.Type != 'Music' " autoplay controls muted :src=" 'video/' + currentMediaItem.Source" class="fs-video"></video>

			<audio v-else autoplay controls :src="'audio/' + currentMediaItem.Source ">
					Your browser does not support the
					<code>audio</code> element.
			</audio>
		</div>

		<div class="mediaCon">
			<div class="mediaItem" v-for="item in media" @click="showItem(item)">
				<img :src="'images/' + item.Image"  alt="media thumb" class="thumbnail">
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
			let url = './admin/index.php?kids=Movie';

			fetch(url) 
			.then(res => res.json())
			.then(data => this.media = data)
			.catch((error) => console.error(error))
			this.showPlayer = false;
		},

		fetchSeries() {
			let url = './admin/index.php?kids=Series';

			fetch(url) 
			.then(res => res.json())
			.then(data => this.media = data)
			.catch((error) => console.error(error))
			this.showPlayer = false;
		},

		fetchAudio() {
			let url = './admin/index.php?kids=Music';

			fetch(url) 
			.then(res => res.json())
			.then(data => this.media = data)
			.catch((error) => console.error(error))
			this.showPlayer = false;
		},

		showItem(item){
			this.currentMediaItem = item;
			this.showPlayer = true;
		},

		hidePlayer(){
			this.showPlayer = false;
		}
    }
}