<template>
	<div class="diy_home diy_list diy_popular_movies" id="diy_popular_movies_list">
		<!-- 列表 -->
		<div class="diy_view_list list list-x" v-if="show">
			<router-link class="diy_card goods diy_list_box_wrap" v-for="(o, i) in list" :key="i"
				:to="'/popular_movies/details?popular_movies_id=' + o['popular_movies_id']">
				<!-- 图片 -->
				<div class="diy_list_img_box" v-if="imgList.length" >
					<div class="diy_row" v-for="(item,index) in imgList" :key="item+index" v-show="$check_field('get',item.name,'/popular_movies/details') && +item.is_img_list">
						<div class="diy_title diy_list_img_title">
							<span>{{item.title}}:</span>
						</div>
						<div class="diy_field diy_img">
							<img :src="$fullUrl(o[item.name])" style="width:100%;height:100%" />
						</div>
					</div>
				</div>
				<!-- 内容 -->
				<div class="diy_list_item_box">
					<div class="diy_list_item_content" v-for="(item,index) in showItemList" :key="item+index">
						<div class="diy_row" :class="{[item.name]:true}" v-if="$check_field('get',item.name,'/popular_movies/details') && +item.is_img_list">
							<div class="diy_title">
								<span>{{item.title}}:</span>
							</div>
							<div class="diy_field diy_text">
								<span v-if="item.type == 'UID'" v-text="get_user_name(o[item.name])"></span>
								<span v-else-if="item.type == '日期'" v-text="$toTime(o[item.name],'yyyy-MM-dd')"></span>
								<span v-else-if="item.type == '时间'" v-text="$toTime(o[item.name],'hh:mm:ss')"></span>
								<span v-else-if="item.type == '日长'" v-text="$toTime(o[item.name],'yyyy-MM-dd hh:mm:ss')"></span>
								<span v-else v-text="o[item.name]"></span>
							</div>
						</div>
					</div>
				</div>
			</router-link>
		</div>
		<!-- 表格 -->
		<div class="diy_view_table" v-else>
			<table class="diy_table">
				<tr class="diy_row">
					<th class="diy_title" v-if="$check_field('get','movie_title')">电影名称
					</th>
					<th class="diy_title" v-if="$check_field('get','alias')">别名
					</th>
					<th class="diy_title" v-if="$check_field('get','director')">导演
					</th>
					<th class="diy_title" v-if="$check_field('get','screenwriter')">编剧
					</th>
					<th class="diy_title" v-if="$check_field('get','performer')">演员
					</th>
					<th class="diy_title" v-if="$check_field('get','type')">类型
					</th>
					<th class="diy_title" v-if="$check_field('get','country')">国家
					</th>
					<th class="diy_title" v-if="$check_field('get','language')">语言
					</th>
					<th class="diy_title" v-if="$check_field('get','particular_year')">年份
					</th>
					<th class="diy_title" v-if="$check_field('get','film_length')">片长
					</th>
					<th class="diy_title" v-if="$check_field('get','release_time')">上映时间
					</th>
					<th class="diy_title" v-if="$check_field('get','official_website')">官方网站
					</th>
					<th class="diy_title" v-if="$check_field('get','idmb_link')">IDMB链接
					</th>
					<th class="diy_title" v-if="$check_field('get','idmb_score')">IDMB评分
					</th>
					<th class="diy_title" v-if="$check_field('get','douban_score')">豆瓣评分
					</th>
					<th class="diy_title" v-if="$check_field('get','awards')">获奖情况
					</th>
					<th class="diy_title" v-if="$check_field('get','movie_poster')">影片海报
					</th>
					<th class="diy_title" v-if="$check_field('get','similar_film_recommendation')">相似电影推荐
					</th>
					<th class="diy_title" v-if="$check_field('get','plot')">剧情
					</th>
				</tr>
				<tr class="diy_row" v-for="(o,i) in list" :key="o+i">
					<td class="diy_field diy_text" v-if="$check_field('get','movie_title')">
						<span>
							{{ o["movie_title"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','alias')">
						<span>
							{{ o["alias"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','director')">
						<span>
							{{ o["director"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','screenwriter')">
						<span>
							{{ o["screenwriter"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','performer')">
						<span>
							{{ o["performer"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','type')">
						<span>
							{{ o["type"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','country')">
						<span>
							{{ o["country"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','language')">
						<span>
							{{ o["language"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','particular_year')">
						<span>
							{{ o["particular_year"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','film_length')">
						<span>
							{{ o["film_length"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','release_time')">
						<span>
							{{ o["release_time"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','official_website')">
						<span>
							{{ o["official_website"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','idmb_link')">
						<span>
							{{ o["idmb_link"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','idmb_score')">
						<span>
							{{ o["idmb_score"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','douban_score')">
						<span>
							{{ o["douban_score"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','awards')">
						<span>
							{{ o["awards"] }}
						</span>
					</td>
					<td class="diy_field" v-if="$check_field('get','movie_poster')">
						<img class="diy_img" :src="o['movie_poster']" />
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','similar_film_recommendation')">
						<span>
							{{ o["similar_film_recommendation"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','plot')">
						<span>
							{{ o["plot"] }}
						</span>
					</td>
				</tr>
			</table>
		</div>
	</div>
</template>

<script>
	export default {
		props: {
			list: {
				type: Array,
				default: function() {
					return [];
				},
			},
			show: {
				type: Boolean,
				default: function(){
					return true;
				}
			}
		},
		data() {
			return {
						imgList: [
						{
							title: "影片海报",
							name: "movie_poster",
							type: "图片",
							is_img_list: "1"
						},
						],
						itemList: [
								{
									title: "电影名称",
									name: "movie_title",
									type: "文本",
									is_img_list: "1"
								},
								{
									title: "别名",
									name: "alias",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "导演",
									name: "director",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "编剧",
									name: "screenwriter",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "演员",
									name: "performer",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "类型",
									name: "type",
									type: "文本",
									is_img_list: "1"
								},
								{
									title: "国家",
									name: "country",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "语言",
									name: "language",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "年份",
									name: "particular_year",
									type: "文本",
									is_img_list: "1"
								},
								{
									title: "片长",
									name: "film_length",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "上映时间",
									name: "release_time",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "官方网站",
									name: "official_website",
									type: "网址",
									is_img_list: "0"
								},
								{
									title: "IDMB链接",
									name: "idmb_link",
									type: "网址",
									is_img_list: "0"
								},
								{
									title: "IDMB评分",
									name: "idmb_score",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "豆瓣评分",
									name: "douban_score",
									type: "文本",
									is_img_list: "1"
								},
								{
									title: "获奖情况",
									name: "awards",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "相似电影推荐",
									name: "similar_film_recommendation",
									type: "文本",
									is_img_list: "0"
								},
						],
						richList: [
								{
									title: "剧情",
									name: "plot",
									type: "多文本"
								},
						],
			};
		},
		methods: {
		},
		created() {
		},
		computed:{
			showItemList(){
				let arr = [];
				let _type = ["视频","音频","文件"];
				this.itemList.forEach(item => {
					if(_type.indexOf(item.type) === -1 && !!+item.is_img_list){
						arr.push(item)
					}
				})
				return arr.slice(0,4);
			}
		}
	};
</script>

<style scoped>
	.media {
		display: flex;
		flex-direction: column;
		justify-content: space-between;
		flex-basis: 75%;
		min-height: 10rem;
	}

	.goods {
		display: flex;
		width: calc(25% - 1rem);
		margin: 0.5rem;
		padding: 0.5rem;
		flex-direction: column;
		justify-content: space-between;
		background-color: white;
		border-radius: 0.5rem;
	}

	.goods:hover {
		border: 0.2rem solid #909399;
		box-shadow: 0 0.1rem 0.3rem rgba(0, 0, 0, 0.15);
	}

	.goods:hover img {
		filter: blur(1px);
	}

	.price {
		font-size: 1rem;
		margin-right: 3px;
	}

	.price_ago {
		text-decoration: line-through;
		font-size: 0.5rem;
		color: #999;

	}

	.title {
		word-break: break-all;
		overflow: hidden;
		text-overflow: ellipsis;
		white-space: nowrap;
		font-weight: 700;
		padding: .25rem;
	}

	.icon_cart {
		color: #FF5722;
		float: right;
	}

	@media (max-width: 992px) {

		.goods {
			width: calc(33% - 1rem);
			;
		}

	}

	@media (max-width: 768px) {

		.goods {
			width: calc(50% - 1rem);
			;
		}

	}
</style>

