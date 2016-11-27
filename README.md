# HCSystemicQRCodeDemo
####利用系统源生方法来扫描二维码/条形码、生成二维码，并封装开灯、震动、提示声音和从相册读取等功能

![image](https://github.com/honeycao/HCSystemicQRCodeDemo/blob/master/HCSystemicQRCodeDemo.gif) 

##导航
>支持 iOS8.0+，Xcode7.0+

1、[功能](https://github.com/honeycao/HCSystemicQRCodeDemo#功能)

2、[使用方法](https://github.com/honeycao/HCSystemicQRCodeDemo#使用方法)

3、[Demo使用](https://github.com/honeycao/HCSystemicQRCodeDemo#Demo使用)

4、[后期改进](https://github.com/honeycao/HCSystemicQRCodeDemo#后期改进)

5、[Q-A](https://github.com/honeycao/HCSystemicQRCodeDemo#Q-A)

6、[备注](https://github.com/honeycao/HCSystemicQRCodeDemo#备注)

-------

##功能
* 打开摄像头扫码或通过相册扫码
* 生成二维码
* 扫码成功会有震动和响铃
* 成功获取扫码信息后是通过系统浏览器打开，没有扫码成功或不能用浏览器打开都有一定的提示，依旧会返回扫码得到的值

##使用方法
* 暂时并没有集成CocoaPods，所以直接将项目中的HCSystemsQRCode添加到项目中即可
* `#import "HCScanQRViewController.h"`是扫码集成，`#import "HCCreateQRCode.h"`是生成二维码集成
* 接口调用
```obj-c
//扫码接口
//初始化和扫码信息 方法一：
HCScanQRViewController *scan = [[HCScanQRViewController alloc]init];
//调用此方法来返回二维码信息
[scan successfulGetQRCodeInfo:^(NSString *QRCodeInfo) {
    //QRCodeInfo是返回的二维码信息
}];

//初始化和扫码信息 方法二：
HCScanQRViewController *scan = [[HCScanQRViewController alloc] initWithSuccessBlock:^(NSString *QRCodeInfo) {
    NSLog(@"扫码信息:%@",QRCodeInfo);
}];

[self.navigationController pushViewController:scan animated:YES];

//生成二维码接口,返回的是一个UIImage
_QRImg.image = [HCCreateQRCode createQRCodeWithString:_input.text ViewController:self];
```

##Demo使用
`FirstViewController` 和 `ShowQRCodeViewController` 分别是扫码和获取二维码

##后期改进
`2016、11、26`
* 简单修改接口以及优化部分代码。

`2016、6、22`
* 修改弹出提示框时一直响的问题，顺便添加几个可支持跳转的app，如qq、微信、微博等

`2016、5、20`
* 错误：在调用的时候如果不需要回传的二维码信息，运行会出错
####更新之后，添加一个Bool值，来确定是否需要获得扫码得到的二维码信息

* 可能需要研究一下如何正确跳转到任何页面，针对扫码信息来做更详细的跳转
* 接口上的调用和信息回调完善

##Q-A
当前的一个问题就是突然发现代码好大，研究半天发现是那个gif图超大，没搞懂，会尽快解决，下载的同学别吓到了。

##备注
>I am a rookie ，I am not God （有建议或想法请q：331864805 ，你的点赞是我最大的动力）
