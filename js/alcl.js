const ClickActiveAll = document.querySelectorAll('.tabs ul li')
		const TabContentAll = document.querySelectorAll('.tab-contents')
		const TabContent1 = document.querySelector('.tab-contents-01')
		const TabContent2 = document.querySelector('.tab-contents-02')
		const TabContent3 = document.querySelector('.tab-contents-03')
		const TabContent4 = document.querySelector('.tab-contents-04')
		const TabContent5 = document.querySelector('.tab-contents-05')

		ClickActiveAll.forEach(item => item.addEventListener('click', function () {
			ClickActiveAll.forEach(el => el.classList.remove('active1'))
			TabContentAll.forEach(el => el.classList.remove('visible'))

			item.classList.add('active1')

			if (item.classList.contains('tab-01')) {
				TabContent1.classList.add('visible')
			}
			if (item.classList.contains('tab-02')) {
				TabContent2.classList.add('visible')
			}
			if (item.classList.contains('tab-03')) {
				TabContent3.classList.add('visible')
			}
			if (item.classList.contains('tab-04')) {
				TabContent4.classList.add('visible')
			}
			if (item.classList.contains('tab-05')) {
				TabContent5.classList.add('visible')
			}
		}))