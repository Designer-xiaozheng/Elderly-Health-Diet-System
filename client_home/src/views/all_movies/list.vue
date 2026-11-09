<template>
	<div class="diy_list page_all_movies" id="all_movies_list">
		<div class="warp">
			<div class="container diy_list_container">
				<div class="diy_list_title">
					<div class="col">
						<span class="title">所有电影列表</span>
					</div>
				</div>
				<div class="row diy_list_search">
					<div class="col">
						<!-- 搜索栏 -->
						<div class="view">							
							<span class="diy_list_search_title">关键字搜索：</span>
							<b-form-input size="sm" class="mr-sm-2" placeholder="电影名称搜索" v-model="query['movie_title']" />
							<b-form-input size="sm" class="mr-sm-2" placeholder="导演搜索" v-model="query['director']" />
							<b-form-input size="sm" class="mr-sm-2" placeholder="演员搜索" v-model="query['performer']" />
							<b-form-input size="sm" class="mr-sm-2" placeholder="类型搜索" v-model="query['type']" />
							<b-form-input size="sm" class="mr-sm-2" placeholder="语言搜索" v-model="query['language']" />
							<b-form-input size="sm" class="mr-sm-2" placeholder="豆瓣评分搜索" v-model="query['douban_score']" />
							<b-button size="sm" @click="search()" >
								<b-icon icon="search"/>
							</b-button>
						</div>
						<!-- /搜索栏 -->
					</div>
				</div>
				<div class="diy_list_select_box">
					<span class="diy_list_select_title">下拉搜索：</span>
						<div class="diy_list_dropdown_box">
						<div class="col">
							<!-- 筛选 -->
							<div class="view">
							</div>
							<!-- /筛选 -->
						</div>
					</div>
					<div class="diy_list_sort_box">
						<div class="col">
							<!-- 排序 -->
							<div class="view">
								<b-dropdown text="排序" variant="outline-dark" left>
										<b-dropdown-item v-for="(o, i) in list_sort" :key="i" @click="set_sort(o)" >
												{{ o.name }}
										</b-dropdown-item>
								</b-dropdown>
							</div>
							<!--/排序 -->
						</div>
					</div>
				</div>
				<div class="row diy_list_box">
					<div class="col">
						<!-- 列表 -->
						<list_all_movies :list="list" />
						<!-- /列表 -->
					</div>
				</div>
				<div class="row diy_list_page_box">
					<div class="col overflow-auto flex_cc">
						<!-- 分页器 -->
						<diy_pager v-model="query['page']" :size="query['size']" :count="count" v-on:toPage="toPage" v-on:toSize="toSize" ></diy_pager>
						<!-- /分页器 -->
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import list_all_movies from "@/components/diy/list_all_movies.vue";
	import diy_pager from "@/components/diy/diy_pager";
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		components: {
			diy_pager,
			list_all_movies
		},
		data() {
			return {
				url_get_list: "~/api/all_movies/get_list?like=0",

				// 查询条件
				query: {
					keyword: "",
					page: 1,
					size: 10,
					"movie_title": "", // 电影名称
					"director": "", // 导演
					"performer": "", // 演员
					"type": "", // 类型
					"language": "", // 语言
					"douban_score": "", // 豆瓣评分
				},

				// 排序内容
				list_sort: [{
						name: "创建时间从高到低",
						value: "`create_time` desc",
					},
					{
						name: "创建时间从低到高",
						value: "`create_time` asc",
					},
					{
						name: "更新时间从高到低",
						value: "`update_time` desc",
					},
					{
						name: "更新时间从低到高",
						value: "`update_time` asc",
					},
					{
						name: "电影名称正序",
						value: "`movie_title` asc",
					},
					{
						name: "电影名称倒序",
						value: "`movie_title` desc",
					},
					{
						name: "导演正序",
						value: "`director` asc",
					},
					{
						name: "导演倒序",
						value: "`director` desc",
					},
					{
						name: "演员正序",
						value: "`performer` asc",
					},
					{
						name: "演员倒序",
						value: "`performer` desc",
					},
					{
						name: "类型正序",
						value: "`type` asc",
					},
					{
						name: "类型倒序",
						value: "`type` desc",
					},
					{
						name: "语言正序",
						value: "`language` asc",
					},
					{
						name: "语言倒序",
						value: "`language` desc",
					},
					{
						name: "豆瓣评分正序",
						value: "`douban_score` asc",
					},
					{
						name: "豆瓣评分倒序",
						value: "`douban_score` desc",
					},
				],
			}
		},
		methods: {
			/**
			 * 筛选选择
			 */
			filter_set(o,key) {
			    if (o == "全部") {
			        this.query[key] = "";
			    } else {
			        this.query[key] = o;
			    }
			    this.search();
			},

			/**
			 * 排序
			 */
			set_sort(o) {
			    this.query.orderby = o.value;
			    this.search();
			},

			/**
			 * 筛选
			 */

			/**
			 * 重置
			 */
			reset() {
				this.query.movie_title = ""
				this.query.director = ""
				this.query.performer = ""
				this.query.type = ""
				this.query.language = ""
				this.query.douban_score = ""
				this.search();
			},

			// 返回条数
			toSize(i){
				this.query.size = i;
				this.first();
			},

			// 返回页数
			toPage(i){
				this.query.page = i;
				this.first();
			},
		},
		computed: {
		},
		created() {
		}
	}
</script>

<style>
</style>
