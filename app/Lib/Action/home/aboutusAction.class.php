<?php
class aboutusAction extends frontendAction {

    public function index() {
        $id = $this->_get('id', 'intval');
        !$id && $this->redirect('index/index');
        $info = M('article_page')->find($id);
        $this->assign('info', $info);
        $this->assign('id', $id);
        $this->_config_seo();
        $this->display();
    }

    public function flink() {
        $this->_config_seo();
    	$this->display();
    }
}