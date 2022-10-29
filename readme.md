<p align="center">
 <img src="https://miro.medium.com/max/1106/1*wnMQPTmEsIq0TiRgfX4hig.png" alt="Robot Framework">
</p>

Robot Framework is a generic open source automation framework. It can be used for test automation and robotic process automation (RPA).
Robot Framework has an easy syntax, utilizing human-readable keywords. Its capabilities can be extended by libraries implemented with Python, Java or many other programming languages.
<br/>
<br/>

# Installation
```
pip3 install robotframework
```

For appium tests :
```
pip3 install robotframework-appiumlibrary
```

For selenium tests :
```
pip3 install robotframework-seleniumlibrary
```
<br/>

# VS Code Extensions
Search “robocorp” in extensions and Install :
- `Robocorp Code`
- `Robot Framework Language Server`
<br/>

# Run Commands
Based on this directory<br/>
`~/robot_framework/Appium_Test$`

<br/>

- ### Default arguments
```python
robot -d Results Tests
```
> Run all robot files in “Tests” and result will be stored in “Results”
<br/>

- ### With user defined arguments
```python
robot -v device_id:<device_id> -v appium_input:<appium_input> -v os:Android -d Results Tests
```
<br/>

- ### Run a single test suite (.robot file)
```python
robot -d Results Tests/<file_name>.robot
```
<br/>

- ### Run a single Test Case
```python
robot -t <testcase_name> -d Results Tests
```
<br/>

- ### Run using tags
```python
robot -i <tag_name> -d Results Tests
```
<br/>

- ### Resultant files naming using Timestamp
```python
robot -d Results --timestampoutputs Tests
```