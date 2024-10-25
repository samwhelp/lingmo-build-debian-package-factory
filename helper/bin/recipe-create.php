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



		if (array_key_exists($key, (array) $this->_Data)) {
			$rtn = $this->_Data[$key];
		}

		return $rtn;

	}


	public function load ()
	{

		//var_dump($this->_ConfgFilePath);

		if (!is_file($this->_ConfgFilePath)) {
			return $this;
		}

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
		//var_dump($this->_ProfileDirPath);

		//https://www.php.net/manual/en/class.recursivedirectoryiterator.php

		$directory = new \RecursiveDirectoryIterator($this->_ProfileDirPath);

		$iterator = new \RecursiveIteratorIterator($directory);


		$data = array();

		foreach ($iterator as $info) {
			//var_dump($info);

			$config_file_path = $info->getPathname();


			if (!is_file($config_file_path)) {
				//var_dump($config_file_path);
				//ingore [.] and [..]
				continue;
			}


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


		//$store = (new BuildTargetStore)->prepare();
		//var_dump($store);


		$profile_dir_path = dirname(__DIR__, 2) . '/tmp/lingmo-build/src/lingmo-build/Configs';

		$profile = (new BuildTargetProfile)
			->setProfileDirPath($profile_dir_path)
			->load();




		$recipe_root_dir_path = dirname(__DIR__, 2) . '/tmp/lingmo-build-recipe';

		if (!file_exists($recipe_root_dir_path)) {
			mkdir($recipe_root_dir_path, 0755, true);
		}




		$recipe_source_dir_path = dirname(__DIR__, 2) . '/asset/demo/build-debian-package';

		var_dump($recipe_source_dir_path);

		//var_dump($profile->getData());

		foreach ($profile->getData() as $config) {
			//var_dump($config);
			$recipe_target_dir_path = $recipe_root_dir_path . '/' . $config->ref("Name");

			//var_dump($recipe_target_dir_path);

			if (!file_exists($recipe_target_dir_path)) {
				mkdir($recipe_target_dir_path, 0755, true);
			}

			$copy_command = "cp -rf " . $recipe_source_dir_path . "/." . " " . $recipe_target_dir_path;

			echo($copy_command . PHP_EOL . PHP_EOL);

			passthru($copy_command);


			$overlay_config_file_path = $recipe_target_dir_path . '/asset/config/repo.sh';

			//var_dump($overlay_config_file_path);

			$overlay_config_content = $this->renderOverlayConfigContent($config);

			file_put_contents($overlay_config_file_path, $overlay_config_content);
			//var_dump($copy_command);

		}

		return $this;

	}


	public function renderOverlayConfigContent ($config)
	{
		$rtn = '';

		$rtn .= PHP_EOL;
		$rtn .= '_Conf_Repo_Name_="' . $config->ref('Name') . '"' . PHP_EOL;
		$rtn .= '_Conf_Repo_Repository_="' . $config->ref('Repository') . '"' . PHP_EOL;
		$rtn .= '_Conf_Repo_Tag_="' . $config->ref('Tag') . '"' . PHP_EOL;
		//$rtn .= PHP_EOL;


		return $rtn;

	}


}



class App {

	public function run ()
	{

		$recipe = (new BuildTargetRecipe)
			->create();

		return;

	}

}




(new App)
	->run();
