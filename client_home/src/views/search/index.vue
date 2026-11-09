<template>
  <div class="page_search">
	<div class="warp">
	  <div class="container">
		<div class="row">
		  <div class="col-12">
			<div class="card_result_search">
			  <div class="title">搜索结果</div>
				<!-- 文章搜索结果 -->
			  <list_result_search
				:list="result_article"
				title="影片资讯"
				source_table="article"
			  ></list_result_search>
				<!-- 论坛搜索结果 -->
			  <list_result_search
				:list="result_forum"
				title="影片交流"
				source_table="forum"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/daily_movie/list', 'get')"
				:list="result_daily_movie_movie_title"
				title="每日电影电影名称"
				source_table="daily_movie"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/daily_movie/list', 'get')"
				:list="result_daily_movie_director"
				title="每日电影导演"
				source_table="daily_movie"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/daily_movie/list', 'get')"
				:list="result_daily_movie_performer"
				title="每日电影演员"
				source_table="daily_movie"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/daily_movie/list', 'get')"
				:list="result_daily_movie_type"
				title="每日电影类型"
				source_table="daily_movie"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/daily_movie/list', 'get')"
				:list="result_daily_movie_country"
				title="每日电影国家"
				source_table="daily_movie"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/daily_movie/list', 'get')"
				:list="result_daily_movie_language"
				title="每日电影语言"
				source_table="daily_movie"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/daily_movie/list', 'get')"
				:list="result_daily_movie_douban_score"
				title="每日电影豆瓣评分"
				source_table="daily_movie"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/high_score_film/list', 'get')"
				:list="result_high_score_film_movie_title"
				title="高分电影电影名称"
				source_table="high_score_film"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/high_score_film/list', 'get')"
				:list="result_high_score_film_director"
				title="高分电影导演"
				source_table="high_score_film"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/high_score_film/list', 'get')"
				:list="result_high_score_film_performer"
				title="高分电影演员"
				source_table="high_score_film"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/high_score_film/list', 'get')"
				:list="result_high_score_film_type"
				title="高分电影类型"
				source_table="high_score_film"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/high_score_film/list', 'get')"
				:list="result_high_score_film_language"
				title="高分电影语言"
				source_table="high_score_film"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/high_score_film/list', 'get')"
				:list="result_high_score_film_douban_score"
				title="高分电影豆瓣评分"
				source_table="high_score_film"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/popular_movies/list', 'get')"
				:list="result_popular_movies_movie_title"
				title="热门电影电影名称"
				source_table="popular_movies"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/popular_movies/list', 'get')"
				:list="result_popular_movies_director"
				title="热门电影导演"
				source_table="popular_movies"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/popular_movies/list', 'get')"
				:list="result_popular_movies_performer"
				title="热门电影演员"
				source_table="popular_movies"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/popular_movies/list', 'get')"
				:list="result_popular_movies_type"
				title="热门电影类型"
				source_table="popular_movies"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/popular_movies/list', 'get')"
				:list="result_popular_movies_language"
				title="热门电影语言"
				source_table="popular_movies"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/popular_movies/list', 'get')"
				:list="result_popular_movies_douban_score"
				title="热门电影豆瓣评分"
				source_table="popular_movies"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/all_movies/list', 'get')"
				:list="result_all_movies_movie_title"
				title="所有电影电影名称"
				source_table="all_movies"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/all_movies/list', 'get')"
				:list="result_all_movies_director"
				title="所有电影导演"
				source_table="all_movies"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/all_movies/list', 'get')"
				:list="result_all_movies_performer"
				title="所有电影演员"
				source_table="all_movies"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/all_movies/list', 'get')"
				:list="result_all_movies_type"
				title="所有电影类型"
				source_table="all_movies"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/all_movies/list', 'get')"
				:list="result_all_movies_language"
				title="所有电影语言"
				source_table="all_movies"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/all_movies/list', 'get')"
				:list="result_all_movies_douban_score"
				title="所有电影豆瓣评分"
				source_table="all_movies"
			  ></list_result_search>
			</div>
		  </div>
		</div>
	  </div>
	</div>
  </div>
</template>

<script>
import mixin from "../../mixins/page.js";
import list_result_search from "../../components/diy/list_result_search.vue";

export default {
  mixins: [mixin],
  data() {
	return {
	  "query": {
		word: "",
	  },
	  "result_article": [],
	  "result_forum": [],
			"result_daily_movie_movie_title":[],
			"result_daily_movie_director":[],
			"result_daily_movie_performer":[],
			"result_daily_movie_type":[],
			"result_daily_movie_country":[],
			"result_daily_movie_language":[],
			"result_daily_movie_douban_score":[],
			"result_high_score_film_movie_title":[],
			"result_high_score_film_director":[],
			"result_high_score_film_performer":[],
			"result_high_score_film_type":[],
			"result_high_score_film_language":[],
			"result_high_score_film_douban_score":[],
			"result_popular_movies_movie_title":[],
			"result_popular_movies_director":[],
			"result_popular_movies_performer":[],
			"result_popular_movies_type":[],
			"result_popular_movies_language":[],
			"result_popular_movies_douban_score":[],
			"result_all_movies_movie_title":[],
			"result_all_movies_director":[],
			"result_all_movies_performer":[],
			"result_all_movies_type":[],
			"result_all_movies_language":[],
			"result_all_movies_douban_score":[],
	};
  },
  methods: {
	/**
	 * 获取文章
	 */
	get_article() {
	  this.$get("~/api/article/get_list?like=0", { page: 1, size: 10, title: this.query.word }, (json) => {
		if (json.result) {
		  this.result_article = json.result.list;
		}
	  });
	},
	/**
	 * 获取影片交流
	 */
	get_forum() {
	  this.$get("~/api/forum/get_list?like=0", { page: 1, size: 10, title: this.query.word }, (json) => {
		if (json.result) {
		  this.result_forum = json.result.list;
		}
	  });
	},
	/**
	 * 获取movie_title
	 */
	get_daily_movie_movie_title(){
		this.$get("~/api/daily_movie/get_list?like=0", { page: 1, size: 10, "movie_title": this.query.word }, (json) => {
		  if (json.result) {
			var result_daily_movie_movie_title = json.result.list;
			result_daily_movie_movie_title.map(o => o.title = o['movie_title'])
	  			this.result_daily_movie_movie_title = result_daily_movie_movie_title
		 	}
		});
	},
	/**
	 * 获取director
	 */
	get_daily_movie_director(){
		this.$get("~/api/daily_movie/get_list?like=0", { page: 1, size: 10, "director": this.query.word }, (json) => {
		  if (json.result) {
			var result_daily_movie_director = json.result.list;
			result_daily_movie_director.map(o => o.title = o['director'])
	  			this.result_daily_movie_director = result_daily_movie_director
		 	}
		});
	},
	/**
	 * 获取performer
	 */
	get_daily_movie_performer(){
		this.$get("~/api/daily_movie/get_list?like=0", { page: 1, size: 10, "performer": this.query.word }, (json) => {
		  if (json.result) {
			var result_daily_movie_performer = json.result.list;
			result_daily_movie_performer.map(o => o.title = o['performer'])
	  			this.result_daily_movie_performer = result_daily_movie_performer
		 	}
		});
	},
	/**
	 * 获取type
	 */
	get_daily_movie_type(){
		this.$get("~/api/daily_movie/get_list?like=0", { page: 1, size: 10, "type": this.query.word }, (json) => {
		  if (json.result) {
			var result_daily_movie_type = json.result.list;
			result_daily_movie_type.map(o => o.title = o['type'])
	  			this.result_daily_movie_type = result_daily_movie_type
		 	}
		});
	},
	/**
	 * 获取country
	 */
	get_daily_movie_country(){
		this.$get("~/api/daily_movie/get_list?like=0", { page: 1, size: 10, "country": this.query.word }, (json) => {
		  if (json.result) {
			var result_daily_movie_country = json.result.list;
			result_daily_movie_country.map(o => o.title = o['country'])
	  			this.result_daily_movie_country = result_daily_movie_country
		 	}
		});
	},
	/**
	 * 获取language
	 */
	get_daily_movie_language(){
		this.$get("~/api/daily_movie/get_list?like=0", { page: 1, size: 10, "language": this.query.word }, (json) => {
		  if (json.result) {
			var result_daily_movie_language = json.result.list;
			result_daily_movie_language.map(o => o.title = o['language'])
	  			this.result_daily_movie_language = result_daily_movie_language
		 	}
		});
	},
	/**
	 * 获取douban_score
	 */
	get_daily_movie_douban_score(){
		this.$get("~/api/daily_movie/get_list?like=0", { page: 1, size: 10, "douban_score": this.query.word }, (json) => {
		  if (json.result) {
			var result_daily_movie_douban_score = json.result.list;
			result_daily_movie_douban_score.map(o => o.title = o['douban_score'])
	  			this.result_daily_movie_douban_score = result_daily_movie_douban_score
		 	}
		});
	},
	/**
	 * 获取movie_title
	 */
	get_high_score_film_movie_title(){
		this.$get("~/api/high_score_film/get_list?like=0", { page: 1, size: 10, "movie_title": this.query.word }, (json) => {
		  if (json.result) {
			var result_high_score_film_movie_title = json.result.list;
			result_high_score_film_movie_title.map(o => o.title = o['movie_title'])
	  			this.result_high_score_film_movie_title = result_high_score_film_movie_title
		 	}
		});
	},
	/**
	 * 获取director
	 */
	get_high_score_film_director(){
		this.$get("~/api/high_score_film/get_list?like=0", { page: 1, size: 10, "director": this.query.word }, (json) => {
		  if (json.result) {
			var result_high_score_film_director = json.result.list;
			result_high_score_film_director.map(o => o.title = o['director'])
	  			this.result_high_score_film_director = result_high_score_film_director
		 	}
		});
	},
	/**
	 * 获取performer
	 */
	get_high_score_film_performer(){
		this.$get("~/api/high_score_film/get_list?like=0", { page: 1, size: 10, "performer": this.query.word }, (json) => {
		  if (json.result) {
			var result_high_score_film_performer = json.result.list;
			result_high_score_film_performer.map(o => o.title = o['performer'])
	  			this.result_high_score_film_performer = result_high_score_film_performer
		 	}
		});
	},
	/**
	 * 获取type
	 */
	get_high_score_film_type(){
		this.$get("~/api/high_score_film/get_list?like=0", { page: 1, size: 10, "type": this.query.word }, (json) => {
		  if (json.result) {
			var result_high_score_film_type = json.result.list;
			result_high_score_film_type.map(o => o.title = o['type'])
	  			this.result_high_score_film_type = result_high_score_film_type
		 	}
		});
	},
	/**
	 * 获取language
	 */
	get_high_score_film_language(){
		this.$get("~/api/high_score_film/get_list?like=0", { page: 1, size: 10, "language": this.query.word }, (json) => {
		  if (json.result) {
			var result_high_score_film_language = json.result.list;
			result_high_score_film_language.map(o => o.title = o['language'])
	  			this.result_high_score_film_language = result_high_score_film_language
		 	}
		});
	},
	/**
	 * 获取douban_score
	 */
	get_high_score_film_douban_score(){
		this.$get("~/api/high_score_film/get_list?like=0", { page: 1, size: 10, "douban_score": this.query.word }, (json) => {
		  if (json.result) {
			var result_high_score_film_douban_score = json.result.list;
			result_high_score_film_douban_score.map(o => o.title = o['douban_score'])
	  			this.result_high_score_film_douban_score = result_high_score_film_douban_score
		 	}
		});
	},
	/**
	 * 获取movie_title
	 */
	get_popular_movies_movie_title(){
		this.$get("~/api/popular_movies/get_list?like=0", { page: 1, size: 10, "movie_title": this.query.word }, (json) => {
		  if (json.result) {
			var result_popular_movies_movie_title = json.result.list;
			result_popular_movies_movie_title.map(o => o.title = o['movie_title'])
	  			this.result_popular_movies_movie_title = result_popular_movies_movie_title
		 	}
		});
	},
	/**
	 * 获取director
	 */
	get_popular_movies_director(){
		this.$get("~/api/popular_movies/get_list?like=0", { page: 1, size: 10, "director": this.query.word }, (json) => {
		  if (json.result) {
			var result_popular_movies_director = json.result.list;
			result_popular_movies_director.map(o => o.title = o['director'])
	  			this.result_popular_movies_director = result_popular_movies_director
		 	}
		});
	},
	/**
	 * 获取performer
	 */
	get_popular_movies_performer(){
		this.$get("~/api/popular_movies/get_list?like=0", { page: 1, size: 10, "performer": this.query.word }, (json) => {
		  if (json.result) {
			var result_popular_movies_performer = json.result.list;
			result_popular_movies_performer.map(o => o.title = o['performer'])
	  			this.result_popular_movies_performer = result_popular_movies_performer
		 	}
		});
	},
	/**
	 * 获取type
	 */
	get_popular_movies_type(){
		this.$get("~/api/popular_movies/get_list?like=0", { page: 1, size: 10, "type": this.query.word }, (json) => {
		  if (json.result) {
			var result_popular_movies_type = json.result.list;
			result_popular_movies_type.map(o => o.title = o['type'])
	  			this.result_popular_movies_type = result_popular_movies_type
		 	}
		});
	},
	/**
	 * 获取language
	 */
	get_popular_movies_language(){
		this.$get("~/api/popular_movies/get_list?like=0", { page: 1, size: 10, "language": this.query.word }, (json) => {
		  if (json.result) {
			var result_popular_movies_language = json.result.list;
			result_popular_movies_language.map(o => o.title = o['language'])
	  			this.result_popular_movies_language = result_popular_movies_language
		 	}
		});
	},
	/**
	 * 获取douban_score
	 */
	get_popular_movies_douban_score(){
		this.$get("~/api/popular_movies/get_list?like=0", { page: 1, size: 10, "douban_score": this.query.word }, (json) => {
		  if (json.result) {
			var result_popular_movies_douban_score = json.result.list;
			result_popular_movies_douban_score.map(o => o.title = o['douban_score'])
	  			this.result_popular_movies_douban_score = result_popular_movies_douban_score
		 	}
		});
	},
	/**
	 * 获取movie_title
	 */
	get_all_movies_movie_title(){
		this.$get("~/api/all_movies/get_list?like=0", { page: 1, size: 10, "movie_title": this.query.word }, (json) => {
		  if (json.result) {
			var result_all_movies_movie_title = json.result.list;
			result_all_movies_movie_title.map(o => o.title = o['movie_title'])
	  			this.result_all_movies_movie_title = result_all_movies_movie_title
		 	}
		});
	},
	/**
	 * 获取director
	 */
	get_all_movies_director(){
		this.$get("~/api/all_movies/get_list?like=0", { page: 1, size: 10, "director": this.query.word }, (json) => {
		  if (json.result) {
			var result_all_movies_director = json.result.list;
			result_all_movies_director.map(o => o.title = o['director'])
	  			this.result_all_movies_director = result_all_movies_director
		 	}
		});
	},
	/**
	 * 获取performer
	 */
	get_all_movies_performer(){
		this.$get("~/api/all_movies/get_list?like=0", { page: 1, size: 10, "performer": this.query.word }, (json) => {
		  if (json.result) {
			var result_all_movies_performer = json.result.list;
			result_all_movies_performer.map(o => o.title = o['performer'])
	  			this.result_all_movies_performer = result_all_movies_performer
		 	}
		});
	},
	/**
	 * 获取type
	 */
	get_all_movies_type(){
		this.$get("~/api/all_movies/get_list?like=0", { page: 1, size: 10, "type": this.query.word }, (json) => {
		  if (json.result) {
			var result_all_movies_type = json.result.list;
			result_all_movies_type.map(o => o.title = o['type'])
	  			this.result_all_movies_type = result_all_movies_type
		 	}
		});
	},
	/**
	 * 获取language
	 */
	get_all_movies_language(){
		this.$get("~/api/all_movies/get_list?like=0", { page: 1, size: 10, "language": this.query.word }, (json) => {
		  if (json.result) {
			var result_all_movies_language = json.result.list;
			result_all_movies_language.map(o => o.title = o['language'])
	  			this.result_all_movies_language = result_all_movies_language
		 	}
		});
	},
	/**
	 * 获取douban_score
	 */
	get_all_movies_douban_score(){
		this.$get("~/api/all_movies/get_list?like=0", { page: 1, size: 10, "douban_score": this.query.word }, (json) => {
		  if (json.result) {
			var result_all_movies_douban_score = json.result.list;
			result_all_movies_douban_score.map(o => o.title = o['douban_score'])
	  			this.result_all_movies_douban_score = result_all_movies_douban_score
		 	}
		});
	},

  },
  components: { list_result_search },
	created(){
    this.query.word = this.$route.query.word || "";
  },
  mounted() {
	this.get_article();
	this.get_forum();
		this.get_daily_movie_movie_title();
		this.get_daily_movie_director();
		this.get_daily_movie_performer();
		this.get_daily_movie_type();
		this.get_daily_movie_country();
		this.get_daily_movie_language();
		this.get_daily_movie_douban_score();
		this.get_high_score_film_movie_title();
		this.get_high_score_film_director();
		this.get_high_score_film_performer();
		this.get_high_score_film_type();
		this.get_high_score_film_language();
		this.get_high_score_film_douban_score();
		this.get_popular_movies_movie_title();
		this.get_popular_movies_director();
		this.get_popular_movies_performer();
		this.get_popular_movies_type();
		this.get_popular_movies_language();
		this.get_popular_movies_douban_score();
		this.get_all_movies_movie_title();
		this.get_all_movies_director();
		this.get_all_movies_performer();
		this.get_all_movies_type();
		this.get_all_movies_language();
		this.get_all_movies_douban_score();
  },
  watch: {
	$route() {
	  $.push(this.query, this.$route.query);
	  this.get_article();
	  this.get_forum();
	  this.get_daily_movie_movie_title();
	  this.get_daily_movie_director();
	  this.get_daily_movie_performer();
	  this.get_daily_movie_type();
	  this.get_daily_movie_country();
	  this.get_daily_movie_language();
	  this.get_daily_movie_douban_score();
	  this.get_high_score_film_movie_title();
	  this.get_high_score_film_director();
	  this.get_high_score_film_performer();
	  this.get_high_score_film_type();
	  this.get_high_score_film_language();
	  this.get_high_score_film_douban_score();
	  this.get_popular_movies_movie_title();
	  this.get_popular_movies_director();
	  this.get_popular_movies_performer();
	  this.get_popular_movies_type();
	  this.get_popular_movies_language();
	  this.get_popular_movies_douban_score();
	  this.get_all_movies_movie_title();
	  this.get_all_movies_director();
	  this.get_all_movies_performer();
	  this.get_all_movies_type();
	  this.get_all_movies_language();
	  this.get_all_movies_douban_score();
	},
  },
};
</script>

<style scoped>
.card_search {
  text-align: center;
}
.card_result_search>.title {
  text-align: center;
  padding: 10px 0;
}
</style>
