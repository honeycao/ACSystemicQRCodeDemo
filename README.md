# HCSystemicQRCodeDemo
利用系统源生方法来扫描二维码/条形码、生成二维码，并封装开灯、震动、提示声音和从相册读取等功能
<<<<<<< HEAD

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
=======
![image](http://pan.baidu.com/disk/home?errno=0&errmsg=Auth%20Login%20Sucess&stoken=d72f050225fa4d62024c4774ab88f997a142b23c6b9e63557f203c2109f563257283ae4b6df761634a4bbde1a15506c9433c0e24217fec2a983fb2bcd01b3c48e1659874d92b&bduss=1d222874155c244f426b09a126e8f5762aa1ac58a430c757309971161f4327b33390195f294d35b662075380a0c7f1dae4df524cd1e5517f4bb775a3d84a3f6314de6c02356e360bd0bad9b4d034924b1cea44720b511f522bd43b262181ab5979b2022c3569eea7e252248d6b607155035c9d5fb8499098a7624e3aa82470a2df78f8585583a1a00f1b3a4b9e21e75762c52da9951acf7ea1e47538ed2d64097f3f04034571ea5299c02d70a22abea0fc71a77ead0df5a61adf041ef58f50a22a99a6184df9#list/path=%2FIOS%2Fgithub%20%E9%A1%B9%E7%9B%AE%20gif%20%E5%9B%BE%E4%BA%91%E5%AD%98%E5%82%A8)
>>>>>>> b0c0f750c2a129dcace65533df4e0eb2a20145c8
