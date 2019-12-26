# Pylint_Runner
Script file to run Pylint on Python source code

## Summary:
We use “pylint” to analyse code quality of our python code. Most of time, we incorporate pylint in our IDE and test python files. Otherwise, we need to use command prompt/ terminal to do the same. One of the major disadvantage of these techniques, is that we are able to analyse one file at a time. Hence, when we work on a enterprise level application it creates some problem for us, as we normally have hundreds of python file to check.

Here we propose a simple tool, which will be able to analyse multiple python files, present in sub folders, in a single go. Also, we produce logs for each and every python file that we analyse, which helps us documenting the code review bugs properly.


## Description:
Pylint Runner is a simple tool, very easy to use. There are two ways to user this tool.

<ol>
<li>Put the pylint_runner.bat file in the root folder of your project. Then simply run the pylint_runner.bat by simply double clicking on the file.</li>
<li>Pylint_runner.bat can be used to analyse single python file also. In that case we use the following command,
	<code>
  pylint_runner.bat file_path 
  </code>
  </li>
</ol>
