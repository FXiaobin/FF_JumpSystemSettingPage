//
//  ViewController.m
//  JumpSystemSettingPage
//
//  Created by fanxiaobin on 2017/3/22.
//  Copyright © 2017年 fanxiaobin. All rights reserved.
//

#import "ViewController.h"

static NSString *KUITableViewCell = @"UITableViewCell";

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView *tableView;

@property (nonatomic,copy) NSArray *dataArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"跳转到系统设置页面";
    
    self.dataArr = @[@"设置首页",
                     @"蓝牙",
                     @"蜂窝移动网络",
                     @"通知页面",
                     @"指定app的通知页面",
                     @"VPN",
                     @"Wi-Fi",
                     @"定位服务",
                     @"指定app的定位服务",
                     @"个人热点",
                     @"关于本机",
                     @"辅助功能",
                     @"飞行模式",
                     @"锁定",
                     @"亮度",
                     @"时间设置",
                     @"FaceTime",
                     @"键盘设置",
                     @"iCloud",
                     @"iCloud备份",
                     @"语言",
                     @"音乐",
                     @"Music Equalizer",
                     @"Music Volume Limit",
                     @"Network",
                     @"Nike + iPo",
                     @"Phone",
                     @"Photos",
                     @"Profile",
                     @"Reset",
                     @"Safari",
                     @"Siri",
                     @"Sounds",
                     @"Software Update",
                     @"Store",
                     @"Twitter",
                     @"Usage",
                     @"Wallpaper",
                     @"Notes"
                     ];
    
    [self.view addSubview:self.tableView];
    
}


-(UITableView *)tableView{
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [UIView new];
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:KUITableViewCell];
    }
    return _tableView;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:KUITableViewCell];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    cell.textLabel.text = self.dataArr[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    switch (indexPath.row) {
        
        case 0:{    //设置首页
            NSURL *url = [NSURL URLWithString:@"prefs:root"];
            [[UIApplication sharedApplication] openURL:url];
            
        }break;
        case 1:{    //蓝牙
            [self openURLWithURLString:@"Bluetooth" isApp:NO];
            
        }break;
        case 2:{    //移动蜂窝
            [self openURLWithURLString:@"MOBILE_DATA_SETTINGS_ID" isApp:NO];
            
        }break;
        case 3:{    //通知
            [self openURLWithURLString:@"NOTIFICATIONS_ID" isApp:NO];
            
        }break;
        case 4:{    //app通知
            [self openURLWithURLString:@"NOTIFICATIONS_ID" isApp:YES]; ///---
            
        }break;
        case 5:{    //VPN
            [self openURLWithURLString:@"General&path=VPN" isApp:NO];
            
        }break;
        case 6:{    //WiFi
            [self openURLWithURLString:@"WIFI" isApp:NO];
            
        }break;
        case 7:{    //定位服务
            [self openURLWithURLString:@"LOCATION_SERVICES" isApp:NO];
            
        }break;
        case 8:{    //app定位服务
            [self openURLWithURLString:@"LOCATION_SERVICES" isApp:YES]; ///---
            
        }break;
        case 9:{    //个人热点
            [self openURLWithURLString:@"INTERNET_TETHERING" isApp:YES]; ///--
            
        }break;
        case 10:{   //关于本机
            [self openURLWithURLString:@"General&path=About" isApp:NO];
            
        }break;
        case 11:{   //辅助功能
            [self openURLWithURLString:@"General&path=ACCESSIBILITY" isApp:NO];
            
        }break;
        case 12:{   //飞行模式
            [self openURLWithURLString:@"AIRPLANE_MODE" isApp:NO];
            
        }break;
        case 13:{   //锁定
            [self openURLWithURLString:@"General&path=AUTOLOCK" isApp:NO];
            
        }break;
        case 14:{   //亮度
            [self openURLWithURLString:@"Brightness" isApp:NO]; ////----
            
        }break;
        case 15:{   //时间设置
            [self openURLWithURLString:@"General&path=DATE_AND_TIME" isApp:NO];
            
        }break;
        case 16:{   //FaceTime
            [self openURLWithURLString:@"FACETIME" isApp:NO];
            
        }break;
        case 17:{   //键盘设置
            [self openURLWithURLString:@"General&path=Keyboar" isApp:NO]; ////---
            
        }break;
        case 18:{   //iCloud
            [self openURLWithURLString:@"CASTLE" isApp:NO];
            
        }break;
        case 19:{   //iCloud备份
            [self openURLWithURLString:@"CASTLE&path=STORAGE_AND_BACKUP" isApp:NO];
            
        }break;
        case 20:{   //语言设置
            [self openURLWithURLString:@"General&path=INTERNATIONAL" isApp:NO];
            
        }break;
        case 21:{   //音乐设置
            [self openURLWithURLString:@"MUSIC" isApp:NO];
            
        }break;
        case 22:{   //均衡器
            [self openURLWithURLString:@"MUSIC&path=EQ" isApp:NO];
            
        }break;
        case 23:{   //音乐 - 音量限制
            [self openURLWithURLString:@"MUSIC&path=VolumeLimit" isApp:NO]; ///--
            
        }break;
        case 24:{
            [self openURLWithURLString:@"General&path=Network" isApp:NO]; ///
            
        }break;
        case 25:{
            [self openURLWithURLString:@"NIKE_PLUS_IPOD" isApp:NO]; ///
            
        }break;
        case 26:{   //电话(本机电话号码)
            [self openURLWithURLString:@"Phone" isApp:NO];
            
        }break;
        case 27:{   //照片和相机
            [self openURLWithURLString:@"Photos" isApp:NO];
            
        }break;
        case 28:{   //描述文件
            [self openURLWithURLString:@"General&path=ManagedConfigurationList" isApp:NO];
            
        }break;
        case 29:{   //还原
            [self openURLWithURLString:@"General&path=Reset" isApp:NO];
            
        }break;
        case 30:{   //Safari
            [self openURLWithURLString:@"Safari" isApp:NO];
            
        }break;
        case 31:{   //siri
            [self openURLWithURLString:@"General&path=Assistant" isApp:NO]; ///---
            
        }break;
        case 32:{   //声音设置
            [self openURLWithURLString:@"Sounds" isApp:NO];
            
        }break;
        case 33:{   //软件更新
            [self openURLWithURLString:@"General&path=SOFTWARE_UPDATE_LINK" isApp:NO];
            
        }break;
        case 34:{   //iTunes store app store
            [self openURLWithURLString:@"STORE" isApp:NO];
            
        }break;
        case 35:{   //Twitter
            [self openURLWithURLString:@"TWITTER" isApp:NO];
            
        }break;
        case 36:{   //用量
            [self openURLWithURLString:@"General&path=USAGE" isApp:NO];
            
        }break;
        case 37:{   //
            [self openURLWithURLString:@"General&path=Wallpaper" isApp:NO]; ///---
            
        }break;
        case 38:{   //
            [self openURLWithURLString:@"General&path=NOTES" isApp:NO]; //-----
        }break;
      
        default:
            break;
    }
 
}

- (void)openURLWithURLString:(NSString *)urlString isApp:(BOOL)isApp{
    
    if ([[UIDevice currentDevice].systemVersion compare:@"10"] == NSOrderedDescending) {
        UIAlertController *av = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"iOS 10 已经不支持从应用跳转到设置页面了" preferredStyle:UIAlertControllerStyleAlert];
        [av addAction:[UIAlertAction actionWithTitle:@"👌" style:UIAlertActionStyleDefault handler:nil]];
        
        [self presentViewController:av animated:YES completion:nil];
        
        return;
    }
    
    
    NSString *str = [NSString stringWithFormat:@"prefs:root=%@",urlString];;
    if (isApp) {
        ///此app的标记 (前提是此app已经注册通知了)
        NSString *identifier = [NSBundle mainBundle].bundleIdentifier;
        str = [NSString stringWithFormat:@"prefs:root=%@&path=%@",urlString,identifier];
    }
    
    
    
    NSURL *url = [NSURL URLWithString:str];
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
        
    }else{
        /* 注意: 这里不跳转的原因是: iOS 10 已经不允许跳转到任何系统设置 */
        NSDictionary *options = @{UIApplicationOpenURLOptionUniversalLinksOnly : @YES};
        [[UIApplication sharedApplication] openURL:url options:options completionHandler:nil];
    }
  
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
