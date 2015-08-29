DWR的使用步骤：
1.导入dwr和commons-logging包;
2.设置web.xml，在其中加入DWR的Listener和DWR的servlet;
	<listener>
        <listener-class>org.directwebremoting.servlet.DwrListener</listener-class>
    </listener>
    <servlet>
        <display-name>DWR Servlet</display-name>
        <servlet-name>dwr-invoker</servlet-name>
        <servlet-class>org.directwebremoting.servlet.DwrServlet</servlet-class>
        <init-param>
            <param-name>debug</param-name>
            <param-value>true</param-value>
        </init-param>
    </servlet>
    <servlet-mapping>
        <servlet-name>dwr-invoker</servlet-name>
        <url-pattern>/dwr/*</url-pattern>
    </servlet-mapping>
3.创建dwr.xml，放入WEB-INF，并且加入Java类的创建信息
<dwr>
    <allow>
        <create creator="new">
            <param name="class" value="com.kxw.service.HelloDwr" />
        </create>
    </allow>
</dwr>

其中： create表示把一个java对象公布为javascript对象，param中的value表示要公布的Java类
公布后，就会创建一个  Java类名.js的文件

4.在页面中引入相应的DWR
	首先： 引入webContext/dwr/engine.js
	其次： 引入公布的javascript对象，webContext/dwr/Java类名.js
	最后： 在JS中使用Java类来进行方法调用，
	//前面是参数，最后一个函数是回调函数，直接调用Java类
	HelloDwr.say("张三",function(data){
		alert(data);
	});