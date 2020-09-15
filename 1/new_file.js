function Calendar(container, year, month) {
    this.year = year;
    this.month = month;
    this.html = html;
    this.el = null; //TODO: 创建分页组件根节点
    if (!el) return;
    this.el.className = 'calendar';
    this.el.innerHTML = this.html();
    container.appendChild(this.el);

    this.el.addEventListener('click', event => {
        var el = event.target;
        var isPre = el.classList.contains('pre');
        var isNext = el.classList.contains('next');
        if (!isPre && !isNext) return;
        if (isPre) {
            //TODO: 更新this.month和this.year
        } else {
            //TODO: 更新this.month和this.year
        }
        this.el.innerHTML = this.html();
    });

    function html() {
        var date = new Date();
        var year = +this.year || 0;
        var month = (+this.month || 0) - 1;
        var day = date.getDate();
        //TODO: 生成组件的内部html字符串
        return '';
    }
}