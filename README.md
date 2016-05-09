# HCSystemicQRCodeDemo
利用系统源生方法来扫描二维码/条形码、生成二维码，并封装开灯、震动、提示声音和从相册读取等功能

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
HCScanQRViewController *scan = [[HCScanQRViewController alloc]init];
//调用此方法来返回二维码信息
[scan successfulGetQRCodeInfo:^(NSString *QRCodeInfo) {
    //QRCodeInfo是返回的二维码信息
}];
[self.navigationController pushViewController:scan animated:YES];

//生成二维码接口,返回的是一个UIImage
_QRImg.image = [HCCreateQRCode createQRCodeWithString:_input.text ViewController:self];
```

##Demo使用
`FirstViewController` 和 `ShowQRCodeViewController` 分别是扫码和获取二维码

##Q-A
等候测试

##备注
>I am a rookie ，I am not God （有建议或想法请q：331864805 ，你的点赞是我最大的动力）