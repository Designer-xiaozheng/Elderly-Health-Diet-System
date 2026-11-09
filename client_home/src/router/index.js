import Vue from 'vue';
import VueRouter from 'vue-router';
import index from '../views/index.vue'
import login from '../views/account/login.vue';

Vue.use(VueRouter)

const routes = [
	// 主页ss
	{
		path: '/',
		name: 'index',
		component: index
	},
	// 登录
	{
		path: '/account/login',
		name: 'login',
		component: login
	},
	// 忘记密码
	{
		path: '/account/forgot',
		name: 'forgot',
		component: () => import('../views/account/forgot.vue')
	},
	// 注册账号
	{
		path: '/account/register',
		name: 'register',
		component: () => import('../views/account/register.vue')
	},
	// 媒体图片
	{
		path: '/media/image',
		name: 'media_image',
		component: () => import('../views/media/image.vue')
	},
	// 音乐
	{
		path: '/media/music',
		name: 'media_music',
		component: () => import('../views/media/music.vue')
	},
	// 媒体视频
	{
		path: '/media/video',
		name: 'media_video',
		component: () => import('../views/media/video.vue')
	},
	// 文章路由
	{
		path: '/article/list',
		name: 'article_list',
		component: () => import('../views/article/list.vue')
	},
	{
		path: '/article/details',
		name: 'article_details',
		component: () => import('../views/article/details.vue')
	},
	// 浏览网站
	// 收藏路由
	{
		path: '/user/collect',
		name: 'collect_list',
		component: () => import('../views/user/collect.vue')
	},
	// 论坛路由
	{
		path: '/forum/list',
		name: 'forum_list',
		component: () => import('../views/forum/list.vue')
	},

	{
		path: '/forum/details',
		name: 'forum_details',
		component: () => import('../views/forum/details.vue')
	},

	{
		path: '/forum/view',
		name: 'forum_view',
		component: () => import('../views/forum/view.vue')
	},
	// 公告路由
	{
		path: '/notice/list',
		name: 'notice_list',
		component: () => import('../views/notice/list.vue')
	},
	{
		path: '/notice/details',
		name: 'notice_details',
		component: () => import('../views/notice/details.vue')
	},
	//每日电影列表路由
	{
		path: '/daily_movie/list',
		name: '/daily_movie_list',
		component: () => import('../views/daily_movie/list.vue')
	},
	//每日电影详情路由
	{
		path: '/daily_movie/details',
		name: '/daily_movie_details',
		component: () => import('../views/daily_movie/details.vue')
	},
	//高分电影列表路由
	{
		path: '/high_score_film/list',
		name: '/high_score_film_list',
		component: () => import('../views/high_score_film/list.vue')
	},
	//高分电影详情路由
	{
		path: '/high_score_film/details',
		name: '/high_score_film_details',
		component: () => import('../views/high_score_film/details.vue')
	},
	//热门电影列表路由
	{
		path: '/popular_movies/list',
		name: '/popular_movies_list',
		component: () => import('../views/popular_movies/list.vue')
	},
	//热门电影详情路由
	{
		path: '/popular_movies/details',
		name: '/popular_movies_details',
		component: () => import('../views/popular_movies/details.vue')
	},
	//所有电影列表路由
	{
		path: '/all_movies/list',
		name: '/all_movies_list',
		component: () => import('../views/all_movies/list.vue')
	},
	//所有电影详情路由
	{
		path: '/all_movies/details',
		name: '/all_movies_details',
		component: () => import('../views/all_movies/details.vue')
	},

	// 用户路由
	{
		path: '/user/index',
		name: 'user_index',
		component: () => import('../views/user/index.vue')
	},
	// 基本信息
	{
		path: '/user/info',
		name: 'user_info',
		component: () => import('../views/user/info.vue')
	},
	// 找回密码
	{
		path: '/user/password',
		name: 'user_password',
		component: () => import('../views/user/password.vue')
	},

	// 搜索
	{
		path: '/search',
		name: 'search',
		component: () => import('../views/search/index.vue')
	},
	// 局部搜索
	{
		path: '/search/details',
		name: 'search_details',
		component: () => import('../views/search/details.vue')
	}
]

const router = new VueRouter({
	mode: 'history',
	base: process.env.BASE_URL,
	routes
})

router.afterEach((to, from, next) => {
	let title = "电影推荐系统-home";
	document.title = title;
	document.logo = "电影推荐系统"
})

export default router
