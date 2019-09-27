#
## TP1: Exercise sheet



```
junyi ZHONG 60297
```

### Introduction

You will need to install Node.js on your computer. We also highly recommend you install and use Visual Studio Code.

### Presentation

This TP focuses on the basics on Web development: HTML, CSS and old-school JavaScript. You also need to run some command lines to install and use an API Server on your machine (that&#39;s why you need to install Node.js!).

### Provided files &amp; setup

You will receive a zipped folder containing an API you will need to launch for the final exercise of this project. To run your API, you need to:

- --Open a command shell at your API location
- --Run command _npm install_
- --When it&#39;s done, run _node server.js_

This will launch the API locally, listening on port **8081**. You must keep your command shell opened and running: closing it will kill the API.

You will also receive the axios package you will need to use to call this API.

### Project

You will need to implement 4 exercises on a Web page. But this time, you will also have to implement the sheet itself!

As demonstrated, we expect you to develop one HTML file containing these exercises and their implementation.

**Ex 1:** Implement a button which displays &quot;Hello World&quot; when you click on it.

**Ex 2:** Implement a pair of buttons. One is hidden, the other is visible. When you click on the visible button, you hide it and reveal the other.

**Ex 3:** Implement a textbox containing a positive number and a button next to it. When you click on the button, you must display if your number is a prime number or not.

**Ex 4:** Implement two fields:

- --A &#39;Full name&#39; text field
- --An &#39;Age&#39; number field

Implement also a way to submit your data to the provided API and display its response!

**Note:** if you find a way to provide a more elegant way of displaying the exercises, do it! Remember that the demonstration featured the strict minimum of what we expect.

### API specifications

There is only one type of request you should define to call the API server. These are the details:

- URL: [http://localhost:8081](http://localhost:8081)

- Method: POST

- Data to send: an object with a field named &#39;fullname&#39; and another field named &#39;age&#39;

- Response: if your full name is empty or &#39;John DOE&#39; (case insensitive), or if your age is undefined or below 0, the API will return an error. Otherwise, it will return OK with a sentence you need to display. You need to correctly manage both cases.

### What you should NOT do in any case!

Doing one of these things will give you an instant and unconditional 0:

- --Add and use any external libraries to your project (axios excepted)
- --Add and use external CSS to your project
- --Modify the provided axios file

### How to send us your work

Send us your folder containing your HTML, CSS and JS files in a zip file, using WeTransfer. Do not send us the API.

Due date is 28th of September.

You need to send an email to Mr. Florian TOREL and myself.

Email addresses:

- [wpersechini@adlere.fr](mailto:wpersechini@adlere.fr)
- ftorel@adlere.fr