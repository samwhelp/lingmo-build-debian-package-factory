#!/usr/bin/env php
<?php


class BuildTargetConfig {

	protected $_ConfigFilePath;

	public function setConfigFilePath (string $val)
	{

		$this->_ConfgFilePath = $val;

		return $this;

	}


	protected $_Data = array();

	public function getData ()
	{

		return $this->_Data;

	}


	public function ref ($key)
	{
		$rtn = '';

		if (array_key_exists($key, $this->_Data)) {
			$rtn = $this->_Data[$key];
		}

		return $rtn;

	}


	public function load ()
	{

		$content = file_get_contents($this->_ConfgFilePath);

		$data = json_decode($content, true);

		$this->_Data = $data;

		return $this;

	}

}




class BuildTargetProfile {

	protected $_ProfileDirPath='';

	public function setProfileDirPath (string $val)
	{

		$this->_ProfileDirPath = $val;

		return $this;

	}


	protected $_Data = array();

	public function getData ()
	{

		return $this->_Data;

	}


	public function load ()
	{
		var_dump($this->_ProfileDirPath);

		//https://www.php.net/manual/en/class.recursivedirectoryiterator.php

		$directory = new \RecursiveDirectoryIterator($this->_ProfileDirPath);

		$iterator = new \RecursiveIteratorIterator($directory);


		$data = array();

		foreach ($iterator as $info) {
			var_dump($info);

			$config_file_path = $info->getPathname();

			$config = (new BuildTargetConfig)
				->setConfigFilePath($config_file_path)
				->load();

			array_push($data, $config);
		}

		$this->_Data = $data;

		return $this;
	}


}




class BuildTargetStore {

	protected $_StoreRepoUrl = 'https://github.com/LingmoOS/lingmo-build';

	public function prepare ()
	{

		var_dump(__FILE__);
		$command = "git clone " . $this->_StoreRepoUrl;

		//system($command);
		passthru($command);

		return $this;
	}


}


class BuildTargetRecipe {

	public function create ()
	{

		return $this;
	}

}



class App {

	public function run ()
	{

		$profile_dir_path = __DIR__ . '/lingmo-build/Configs';

		$profile = (new BuildTargetProfile)
			->setProfileDirPath($profile_dir_path)
			->load();


		var_dump($profile->getData());

		return;


		//$store = (new BuildTargetStore)->prepare();
		//var_dump($store);

		$config_file_path = __DIR__ . '/lingmo-build/Configs/lingmo-core.json';

		$config = (new BuildTargetConfig)
			->setConfigFilePath($config_file_path)
			->load();


		var_dump($config->ref("x"));

		var_dump($config);

		var_dump ('yes');
	}


}




(new App)
	->run();
