<template>
	<el-main class="bg">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','movie_title') || $check_field('add','movie_title') || $check_field('set','movie_title')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="电影名称" prop="movie_title">
					<el-input id="movie_title" v-model="form['movie_title']" placeholder="请输入电影名称"
							  v-if="user_group === '管理员' || (form['high_score_film_id'] && $check_field('set','movie_title')) || (!form['high_score_film_id'] && $check_field('add','movie_title'))" :disabled="disabledObj['movie_title_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','movie_title')">{{form['movie_title']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','alias') || $check_field('add','alias') || $check_field('set','alias')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="别名" prop="alias">
					<el-input id="alias" v-model="form['alias']" placeholder="请输入别名"
							  v-if="user_group === '管理员' || (form['high_score_film_id'] && $check_field('set','alias')) || (!form['high_score_film_id'] && $check_field('add','alias'))" :disabled="disabledObj['alias_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','alias')">{{form['alias']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','director') || $check_field('add','director') || $check_field('set','director')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="导演" prop="director">
					<el-input id="director" v-model="form['director']" placeholder="请输入导演"
							  v-if="user_group === '管理员' || (form['high_score_film_id'] && $check_field('set','director')) || (!form['high_score_film_id'] && $check_field('add','director'))" :disabled="disabledObj['director_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','director')">{{form['director']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','screenwriter') || $check_field('add','screenwriter') || $check_field('set','screenwriter')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="编剧" prop="screenwriter">
					<el-input id="screenwriter" v-model="form['screenwriter']" placeholder="请输入编剧"
							  v-if="user_group === '管理员' || (form['high_score_film_id'] && $check_field('set','screenwriter')) || (!form['high_score_film_id'] && $check_field('add','screenwriter'))" :disabled="disabledObj['screenwriter_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','screenwriter')">{{form['screenwriter']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','performer') || $check_field('add','performer') || $check_field('set','performer')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="演员" prop="performer">
					<el-input id="performer" v-model="form['performer']" placeholder="请输入演员"
							  v-if="user_group === '管理员' || (form['high_score_film_id'] && $check_field('set','performer')) || (!form['high_score_film_id'] && $check_field('add','performer'))" :disabled="disabledObj['performer_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','performer')">{{form['performer']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','type') || $check_field('add','type') || $check_field('set','type')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="类型" prop="type">
					<el-input id="type" v-model="form['type']" placeholder="请输入类型"
							  v-if="user_group === '管理员' || (form['high_score_film_id'] && $check_field('set','type')) || (!form['high_score_film_id'] && $check_field('add','type'))" :disabled="disabledObj['type_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','type')">{{form['type']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','country') || $check_field('add','country') || $check_field('set','country')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="国家" prop="country">
					<el-input id="country" v-model="form['country']" placeholder="请输入国家"
							  v-if="user_group === '管理员' || (form['high_score_film_id'] && $check_field('set','country')) || (!form['high_score_film_id'] && $check_field('add','country'))" :disabled="disabledObj['country_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','country')">{{form['country']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','language') || $check_field('add','language') || $check_field('set','language')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="语言" prop="language">
					<el-input id="language" v-model="form['language']" placeholder="请输入语言"
							  v-if="user_group === '管理员' || (form['high_score_film_id'] && $check_field('set','language')) || (!form['high_score_film_id'] && $check_field('add','language'))" :disabled="disabledObj['language_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','language')">{{form['language']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','particular_year') || $check_field('add','particular_year') || $check_field('set','particular_year')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="年份" prop="particular_year">
					<el-input id="particular_year" v-model="form['particular_year']" placeholder="请输入年份"
							  v-if="user_group === '管理员' || (form['high_score_film_id'] && $check_field('set','particular_year')) || (!form['high_score_film_id'] && $check_field('add','particular_year'))" :disabled="disabledObj['particular_year_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','particular_year')">{{form['particular_year']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','film_length') || $check_field('add','film_length') || $check_field('set','film_length')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="片长" prop="film_length">
					<el-input id="film_length" v-model="form['film_length']" placeholder="请输入片长"
							  v-if="user_group === '管理员' || (form['high_score_film_id'] && $check_field('set','film_length')) || (!form['high_score_film_id'] && $check_field('add','film_length'))" :disabled="disabledObj['film_length_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','film_length')">{{form['film_length']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','release_time') || $check_field('add','release_time') || $check_field('set','release_time')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="上映时间" prop="release_time">
					<el-input id="release_time" v-model="form['release_time']" placeholder="请输入上映时间"
							  v-if="user_group === '管理员' || (form['high_score_film_id'] && $check_field('set','release_time')) || (!form['high_score_film_id'] && $check_field('add','release_time'))" :disabled="disabledObj['release_time_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','release_time')">{{form['release_time']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','official_website') || $check_field('add','official_website') || $check_field('set','official_website')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="官方网站" prop="official_website">
					<el-input id="official_website" v-model="form['official_website']" placeholder="请输入官方网站"
							  v-if="user_group === '管理员' || (form['high_score_film_id'] && $check_field('set','official_website')) || (!form['high_score_film_id'] && $check_field('add','official_website'))" :disabled="disabledObj['official_website_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','official_website')">{{form['official_website']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','idmb_link') || $check_field('add','idmb_link') || $check_field('set','idmb_link')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="MB链接" prop="idmb_link">
					<el-input id="idmb_link" v-model="form['idmb_link']" placeholder="请输入IDMB链接"
							  v-if="user_group === '管理员' || (form['high_score_film_id'] && $check_field('set','idmb_link')) || (!form['high_score_film_id'] && $check_field('add','idmb_link'))" :disabled="disabledObj['idmb_link_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','idmb_link')">{{form['idmb_link']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','idmb_score') || $check_field('add','idmb_score') || $check_field('set','idmb_score')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="MB评分" prop="idmb_score">
					<el-input id="idmb_score" v-model="form['idmb_score']" placeholder="请输入IDMB评分"
							  v-if="user_group === '管理员' || (form['high_score_film_id'] && $check_field('set','idmb_score')) || (!form['high_score_film_id'] && $check_field('add','idmb_score'))" :disabled="disabledObj['idmb_score_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','idmb_score')">{{form['idmb_score']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','douban_score') || $check_field('add','douban_score') || $check_field('set','douban_score')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="豆瓣评分" prop="douban_score">
					<el-input id="douban_score" v-model="form['douban_score']" placeholder="请输入豆瓣评分"
							  v-if="user_group === '管理员' || (form['high_score_film_id'] && $check_field('set','douban_score')) || (!form['high_score_film_id'] && $check_field('add','douban_score'))" :disabled="disabledObj['douban_score_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','douban_score')">{{form['douban_score']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','awards') || $check_field('add','awards') || $check_field('set','awards')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="获奖情况" prop="awards">
					<el-input id="awards" v-model="form['awards']" placeholder="请输入获奖情况"
							  v-if="user_group === '管理员' || (form['high_score_film_id'] && $check_field('set','awards')) || (!form['high_score_film_id'] && $check_field('add','awards'))" :disabled="disabledObj['awards_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','awards')">{{form['awards']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','movie_poster') || $check_field('add','movie_poster') || $check_field('set','movie_poster')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="影片海报" prop="movie_poster">
					<el-upload :disabled="disabledObj['movie_poster_isDisabled']" id="movie_poster" class="avatar-uploader" drag
						accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="upload_movie_poster"
						:show-file-list="false" v-if="user_group === '管理员' || (form['high_score_film_id'] && $check_field('set','movie_poster')) || (!form['high_score_film_id'] && $check_field('add','movie_poster'))">
						<img v-if="form['movie_poster']" :src="$fullUrl(form['movie_poster'])" class="avatar">
						<i v-else class="el-icon-plus avatar-uploader-icon"></i>
					</el-upload>
					<el-image v-else-if="$check_field('get','movie_poster')" style="width: 100px; height: 100px"
						:src="$fullUrl(form['movie_poster'])" :preview-src-list="[$fullUrl(form['movie_poster'])]">
						<div slot="error" class="image-slot">
							<img src="../../../public/img/error.png" style="width: 90px; height: 90px" />
						</div>
					</el-image>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','similar_film_recommendation') || $check_field('add','similar_film_recommendation') || $check_field('set','similar_film_recommendation')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="相似电影推荐" prop="similar_film_recommendation">
					<el-input id="similar_film_recommendation" v-model="form['similar_film_recommendation']" placeholder="请输入相似电影推荐"
							  v-if="user_group === '管理员' || (form['high_score_film_id'] && $check_field('set','similar_film_recommendation')) || (!form['high_score_film_id'] && $check_field('add','similar_film_recommendation'))" :disabled="disabledObj['similar_film_recommendation_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','similar_film_recommendation')">{{form['similar_film_recommendation']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','plot') || $check_field('add','plot') || $check_field('set','plot')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="剧情" prop="plot">
					<el-input type="textarea" id="plot" v-model="form['plot']" placeholder="请输入剧情"
						v-if="user_group === '管理员' || (form['high_score_film_id'] && $check_field('set','plot')) || (!form['high_score_film_id'] && $check_field('add','plot'))" :disabled="disabledObj['plot_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','plot')">{{form['plot']}}</div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8">
				<el-form-item>
					<el-button type="primary" @click="submit()">提交</el-button>
					<el-button @click="cancel()">取消</el-button>
				</el-form-item>
			</el-col>

		</el-form>
	</el-main>
</template>

<script>
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				field: "high_score_film_id",
				url_add: "~/api/high_score_film/add?",
				url_set: "~/api/high_score_film/set?",
				url_get_obj: "~/api/high_score_film/get_obj?",
				url_upload: "~/api/high_score_film/upload?",

				query: {
					"high_score_film_id": 0,
				},

				form: {
					"movie_title":'', // 电影名称
					"alias":'', // 别名
					"director":'', // 导演
					"screenwriter":'', // 编剧
					"performer":'', // 演员
					"type":'', // 类型
					"country":'', // 国家
					"language":'', // 语言
					"particular_year":'', // 年份
					"film_length":'', // 片长
					"release_time":'', // 上映时间
					"official_website":'', // 官方网站
					"idmb_link":'', // IDMB链接
					"idmb_score":'', // IDMB评分
					"douban_score":'', // 豆瓣评分
					"awards":'', // 获奖情况
					"movie_poster":'', // 影片海报
					"similar_film_recommendation":'', // 相似电影推荐
					"plot":'', // 剧情
					"high_score_film_id": 0, // ID

				},
				disabledObj:{
					"movie_title_isDisabled": false,
					"alias_isDisabled": false,
					"director_isDisabled": false,
					"screenwriter_isDisabled": false,
					"performer_isDisabled": false,
					"type_isDisabled": false,
					"country_isDisabled": false,
					"language_isDisabled": false,
					"particular_year_isDisabled": false,
					"film_length_isDisabled": false,
					"release_time_isDisabled": false,
					"official_website_isDisabled": false,
					"idmb_link_isDisabled": false,
					"idmb_score_isDisabled": false,
					"douban_score_isDisabled": false,
					"awards_isDisabled": false,
					"movie_poster_isDisabled": false,
					"similar_film_recommendation_isDisabled": false,
					"plot_isDisabled": false,
				},

			}
		},
		methods: {
			/**
			 * 上传影片海报
			 * @param {Object} param图片参数
			 */
			upload_movie_poster(param){
				this.uploadFile(param.file, "movie_poster");
			},

			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
				if(this.form && form){
					Object.keys(this.form).forEach(key => {
						Object.keys(form).forEach(dbKey => {
							// if(dbKey === "charging_standard"){
							// 	this.form['charging_rules'] = form[dbKey];
							// 	this.disabledObj['charging_rules_isDisabled'] = true;
							// };
							if(key === dbKey){
								this.disabledObj[key+'_isDisabled'] = true;
							}
						})
					})
				}
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){

			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/high_score_film/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/high_score_film/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/high_score_film/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/high_score_film/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/high_score_film/view','get');
					console.log(bl ? "你有视图查询权限视作有查询权限" : "你没有视图查询权限");
				}

				console.log(bl ? "具有当前页面的查看权，请注意这不代表你有字段的查看权" : "无权查看当前页，请注意即便有字段查询权限没有页面查询权限也不行");

				return bl;
			},
			/**
			 * 上传文件
			 * @param {Object} param
			 */
			uploadimg(param) {
				this.uploadFile(param.file, "avatar");
			},

		},
		created() {
		}
	}
</script>

<style>
	.avatar-uploader .el-upload {
		border: 1px dashed #d9d9d9;
		border-radius: 6px;
		cursor: pointer;
		position: relative;
		overflow: hidden;
	}

	.avatar-uploader .el-upload:hover {
		border-color: #409EFF;
	}

	.avatar-uploader-icon {
		font-size: 28px;
		color: #8c939d;
		width: 178px;
		height: 178px;
		line-height: 178px;
		text-align: center;
	}

	.avatar {
		width: 178px;
		height: 178px;
		display: block;
	}
</style>
