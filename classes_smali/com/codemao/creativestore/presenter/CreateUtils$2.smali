.class Lcom/codemao/creativestore/presenter/CreateUtils$2;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativestore/presenter/CreateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/presenter/CreateUtils;


# direct methods
.method public static synthetic $r8$lambda$47Z5ilT4laj5HgEZwUoEkmRf918(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Lcom/codemao/creativestore/presenter/CreateUtils$2;->lambda$write$4(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7dFLrdgWQnzz5yMV_DF2BlD20ck(Lcom/codemao/creativestore/presenter/CreateUtils$2;Lkotlin/jvm/functions/Function1;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils$2;->lambda$connect$2(Lkotlin/jvm/functions/Function1;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DHXbtRwjk1214ftsDXOFyKShojY(Lcom/codemao/creativestore/presenter/CreateUtils$2;Lcom/codemao/creativestore/jsbridge/bean/ReadData;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils$2;->lambda$read$7(Lcom/codemao/creativestore/jsbridge/bean/ReadData;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G0TcpQuy98Hw2s4G3w0xodOs8jY(Lcom/codemao/creativestore/presenter/CreateUtils$2;Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)Lkotlin/Unit;
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils$2;->lambda$discover$0(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Jg7gCWrkDlzXDk8yHJlSpU5evcU(Lkotlin/jvm/functions/Function1;[B)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils$2;->lambda$read$6(Lkotlin/jvm/functions/Function1;[B)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MC4YR5F6juZqzKjpZNVOZ82NYKQ(Lcom/codemao/creativestore/presenter/CreateUtils$2;Lcom/codemao/creativestore/jsbridge/bean/WriteData;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils$2;->lambda$write$5(Lcom/codemao/creativestore/jsbridge/bean/WriteData;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RKVT9ENw5AJbwlM1i9MksJPRtAc(Lkotlin/jvm/functions/Function1;Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils$2;->lambda$discover$1(Lkotlin/jvm/functions/Function1;Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RYnHVdSgbFjgMH82Lz9VATtQOH4(Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Lcom/codemao/creativestore/presenter/CreateUtils$2;->lambda$enableNotifications$9(Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oj2-BapbQvCgBKiZtCe8ANvI1nE(Lcom/codemao/creativestore/presenter/CreateUtils$2;Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;[B)Lkotlin/Unit;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils$2;->lambda$enableNotifications$8(Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;[B)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v3HUe4vMo1AEogbzls9nVib-t4k(Lcom/codemao/creativestore/presenter/CreateUtils$2;Lcom/codemao/creativestore/jsbridge/bean/ConnectData;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils$2;->lambda$connect$3(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V
    .registers 2

    .line 678
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$connect$2(Lkotlin/jvm/functions/Function1;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 703
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/creativestore/view/NewBcmView;->bluetoothConnectSuccess()V

    .line 704
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$connect$3(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 3

    .line 708
    iget-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {p2, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->notifyBluetoothDisconnect(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;)V

    .line 709
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/creativestore/view/NewBcmView;->bluetoothDisconnect()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$discover$0(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)Lkotlin/Unit;
    .registers 3

    if-eqz p1, :cond_7

    .line 685
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$600(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method private static synthetic lambda$discover$1(Lkotlin/jvm/functions/Function1;Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;)Lkotlin/Unit;
    .registers 3

    .line 690
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 689
    invoke-static {v0, p1}, Lcom/codemao/creativestore/utils/ScanExceptionHandler;->handleException(Landroid/content/Context;Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;)Ljava/lang/String;

    move-result-object p1

    .line 693
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$enableNotifications$8(Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;[B)Lkotlin/Unit;
    .registers 7

    .line 753
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    new-instance v1, Lcom/codemao/creativestore/jsbridge/bean/NotificationReturnData;

    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;->getPeripheralId()Ljava/lang/String;

    move-result-object v2

    .line 754
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;->getServiceId()Ljava/lang/String;

    move-result-object v3

    .line 755
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;->getCharacteristicId()Ljava/lang/String;

    move-result-object p1

    .line 756
    invoke-static {p2}, Lcom/codemao/creativestore/utils/HexString;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/codemao/creativestore/jsbridge/bean/NotificationReturnData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->notificationFromBluetooth(Lcom/codemao/creativestore/jsbridge/bean/NotificationReturnData;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private static synthetic lambda$enableNotifications$9(Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$read$6(Lkotlin/jvm/functions/Function1;[B)Ljava/lang/Object;
    .registers 2

    .line 739
    invoke-static {p1}, Lcom/codemao/creativestore/utils/HexString;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$read$7(Lcom/codemao/creativestore/jsbridge/bean/ReadData;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 4

    .line 742
    instance-of p2, p2, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;

    if-eqz p2, :cond_12

    .line 743
    iget-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    new-instance v0, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;

    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/ReadData;->getPeripheralId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->notifyBluetoothDisconnect(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;)V

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method private static synthetic lambda$write$4(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .registers 2

    const/4 v0, 0x0

    .line 724
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private synthetic lambda$write$5(Lcom/codemao/creativestore/jsbridge/bean/WriteData;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 4

    .line 728
    instance-of p2, p2, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;

    if-eqz p2, :cond_12

    .line 729
    iget-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    new-instance v0, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;

    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->getPeripheralId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->notifyBluetoothDisconnect(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;)V

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public connect(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/jsbridge/bean/ConnectData;",
            "Lkotlin/jvm/functions/Function1<",
            "-[",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 701
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    new-instance v1, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2}, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils$2;Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils$2;Lcom/codemao/creativestore/jsbridge/bean/ConnectData;)V

    invoke-virtual {v0, p1, v1, p2}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->connect(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public disconnect(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;)V
    .registers 3

    .line 716
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;->getPeripheralId()Ljava/lang/String;

    move-result-object p1

    .line 717
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->disconnect(Ljava/lang/String;)V

    .line 718
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/creativestore/view/NewBcmView;->bluetoothDisconnect()V

    return-void
.end method

.method public discover(Lcom/codemao/creativestore/jsbridge/bean/DiscoverData;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/jsbridge/bean/DiscoverData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/DiscoverData;->getLocalNames()[Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils$2;)V

    new-instance v2, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda7;

    invoke-direct {v2, p2}, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanBleDevices([Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    const-string p1, ""

    .line 696
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public enableNotifications(Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;)V
    .registers 5

    .line 751
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    new-instance v1, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils$2;Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;)V

    sget-object v2, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda9;->INSTANCE:Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda9;

    invoke-virtual {v0, p1, v1, v2}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->enableNotifications(Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public getPermissionState()I
    .registers 4

    .line 774
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->isScanning()Z

    move-result v0

    const/16 v1, 0x6a

    if-eqz v0, :cond_17

    .line 775
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    new-instance v2, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;

    invoke-direct {v2, v1}, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeBluetoothPermissionState(Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;)V

    return v1

    .line 778
    :cond_17
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->getRxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/RxBleClient;->isScanRuntimePermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->getRxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/RxBleClient;->isConnectRuntimePermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 779
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    new-instance v2, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;

    invoke-direct {v2, v1}, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeBluetoothPermissionState(Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;)V

    return v1

    .line 782
    :cond_3e
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 783
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_50

    .line 784
    invoke-static {v0}, Lcom/codemao/creativestore/utils/BluetoothPermissionRequest;->requestAndroidSBlueEnablePermission(Landroidx/fragment/app/Fragment;)V

    goto :goto_5b

    .line 786
    :cond_50
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils;->rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    invoke-virtual {v1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->getRxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/creativestore/utils/BluetoothPermissionRequest;->requestLocationPermission(Landroidx/fragment/app/Fragment;Lcom/polidea/rxandroidble2_codemao/RxBleClient;)V

    :goto_5b
    const/16 v0, 0x67

    return v0
.end method

.method public read(Lcom/codemao/creativestore/jsbridge/bean/ReadData;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/jsbridge/bean/ReadData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 737
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    new-instance v1, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda8;

    invoke-direct {v1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils$2;Lcom/codemao/creativestore/jsbridge/bean/ReadData;)V

    invoke-virtual {v0, p1, v1, p2}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->read(Lcom/codemao/creativestore/jsbridge/bean/ReadData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public readRssi(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;)I
    .registers 3

    .line 764
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->readRssi(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;)I

    move-result p1

    return p1
.end method

.method public stopDiscover()V
    .registers 2

    .line 769
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->disposeBlueScan()V

    return-void
.end method

.method public write(Lcom/codemao/creativestore/jsbridge/bean/WriteData;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/jsbridge/bean/WriteData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 723
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$2;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    new-instance v1, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils$2$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils$2;Lcom/codemao/creativestore/jsbridge/bean/WriteData;)V

    invoke-virtual {v0, p1, v1, p2}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->write(Lcom/codemao/creativestore/jsbridge/bean/WriteData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
