.class public final Lcom/codemao/toolssdk/utils/RxBlueClientUtils;
.super Ljava/lang/Object;
.source "RxBlueClientUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/utils/RxBlueClientUtils$Companion;,
        Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxBlueClientUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxBlueClientUtils.kt\ncom/codemao/toolssdk/utils/RxBlueClientUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,541:1\n1851#2,2:542\n*S KotlinDebug\n*F\n+ 1 RxBlueClientUtils.kt\ncom/codemao/toolssdk/utils/RxBlueClientUtils\n*L\n409#1:542,2\n*E\n"
.end annotation


# instance fields
.field private bleStateDispose:Lio/reactivex/disposables/Disposable;

.field private final bluetoothDeviceInfoHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private notificationObservableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field private rxBleClient:Lcom/polidea/rxandroidble2_codemao/RxBleClient;

.field private scanDisposable:Lio/reactivex/disposables/Disposable;

.field private final scanResultCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final thread:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;


# direct methods
.method public static synthetic $r8$lambda$-RdxcZ632orttxn07tocm21AhP0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanBleDevices$lambda$11$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-XXrd7W9JuXlygqQMA8DJzDeI10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->connect$lambda$19$lambda$15(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-xpGdJuPwJcnrF7divpwap6N5Yo(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->connect$lambda$19$lambda$13(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0s5wjCGpPib5xBFLoc2IMnm3p4c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->write$lambda$24$lambda$22(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$13KovYZ0ulLvvvFlCV23HtbT98E(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;Lkotlin/jvm/functions/Function1;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanBleDevices$delayCallback$lambda$2(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3_qi0uBWPwsuyctwkJuNauWRYGY(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanBleDevices$lambda$11$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6UhpkTFnm6ox0BnSt5XehFDlL3I(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanBleDevices$lambda$11$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8KIkUWVSe9MaGsxkhpeYVYwmW7s(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->observeStateChange$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B05H77-GwHjlRumowVootJXIGhc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->bluetoothAction$lambda$31(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BEiE752g978LqYgTr_0pLExuA30(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lio/reactivex/disposables/Disposable;Lkotlin/jvm/internal/Ref$ObjectRef;[Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanBleDevices$lambda$11$lambda$7(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lio/reactivex/disposables/Disposable;Lkotlin/jvm/internal/Ref$ObjectRef;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ebh9bLo9xJQy_SJKu2shXioAMuk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->connect$lambda$19$lambda$16(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GYClsxwKKHWQHgyFLkQNGkSr9Zg()V
    .registers 0

    invoke-static {}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanBleDevices$lambda$11$lambda$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$HbGWqvuDw61pmbZH1mWnfS6m0Fc(Lcom/codemao/toolssdk/model/dsbridge/WriteData;Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->write$lambda$24(Lcom/codemao/toolssdk/model/dsbridge/WriteData;Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JBrbQ8jvLDER_o5RoBRYVfW1dbI(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanBleDevices$lambda$11$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NhfVkXRgyWGjtv0yPX8xbXizd4o()V
    .registers 0

    invoke-static {}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->connect$lambda$19$lambda$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$QAsSIH9sSXqf35VDR3on9Y-4hzw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanBleDevices$lambda$11$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RVBYzSZ9NEpkA8HIBJX9tm6jAZQ(Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->enableNotifications$lambda$26(Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TYw6DyAAoG--FvYtnTzqYaPTioA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->write$lambda$24$lambda$21(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UMMLi-0vG5D_ebA-JRxIY48ttAA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->connect$lambda$19$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_idD1ih36B7JM1k8mReMRyarArw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->observeStateChange$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_s8GEPDsdJG1wYs-mtqZsMco8Mc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->connect$lambda$19$lambda$17(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dDNZd6fer5qk4bxIYgO7DBheiso(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->connect$lambda$19(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hbCB1BHQZVeS3NwxWbSeDtaLKXQ(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->disposeBlueScan$lambda$27(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iMjWHoUybYtenCWE8rFNiBG8kK4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->connect$lambda$19$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iuxNQB_Di5u9Z4gWCnOA_RiGCWU(Lcom/codemao/toolssdk/model/dsbridge/ReadData;Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->read$lambda$25(Lcom/codemao/toolssdk/model/dsbridge/ReadData;Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mnUHhnUNBYySM-xOUKF6bRj5UOA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->write$lambda$24$lambda$23(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pcmtK-be0lhHY7hfcCJoMKyOiTA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->bluetoothAction$lambda$30(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qicPrfZK0ztFyAuo8bg5VIhag6I(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;[Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanBleDevices$lambda$11(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;[Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w0vzlT2F-9SSXXcnbln9XGRHdlk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanBleDevices$lambda$11$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->bluetoothDeviceInfoHashMap:Ljava/util/HashMap;

    .line 56
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->notificationObservableMap:Ljava/util/HashMap;

    .line 59
    new-instance v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->thread:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;

    .line 76
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->rxBleClient:Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    if-nez v1, :cond_64

    .line 77
    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/RxBleClient;->create(Landroid/content/Context;)Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->rxBleClient:Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    .line 79
    new-instance p1, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;

    invoke-direct {p1}, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;-><init>()V

    const/4 v1, 0x4

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;->setLogLevel(Ljava/lang/Integer;)Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;

    move-result-object p1

    const/4 v1, 0x2

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;->setMacAddressLogSetting(Ljava/lang/Integer;)Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;

    move-result-object p1

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;->setUuidsLogSetting(Ljava/lang/Integer;)Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;

    move-result-object p1

    .line 83
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;->setShouldLogAttributeValues(Ljava/lang/Boolean;)Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;->build()Lcom/polidea/rxandroidble2_codemao/LogOptions;

    move-result-object p1

    .line 78
    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/RxBleClient;->updateLogOptions(Lcom/polidea/rxandroidble2_codemao/LogOptions;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_64
    return-void
.end method

.method public static final synthetic access$addScanResult(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->addScanResult(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V

    return-void
.end method

.method public static final synthetic access$getCompositeDisposable$p(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;)Lio/reactivex/disposables/CompositeDisposable;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$getScanResultCacheList$p(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;)Ljava/util/ArrayList;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$scanBleDevices$checkScanResult(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;[Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V
    .registers 4

    .line 39
    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanBleDevices$checkScanResult(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;[Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final addScanResult(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V
    .registers 7

    .line 507
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v0

    invoke-interface {v0}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x0

    .line 510
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_16
    if-ge v0, v1, :cond_40

    .line 511
    iget-object v2, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    invoke-virtual {v2}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v2

    .line 512
    invoke-interface {v2}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 513
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v3

    invoke-interface {v3}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 512
    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 517
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 521
    :cond_40
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final bluetoothAction(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleConnection;",
            ">;-",
            "Ljava/util/UUID;",
            "+",
            "Lio/reactivex/Observable<",
            "[B>;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 447
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->findBluetoothDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 448
    :cond_7
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v0

    const-string v1, "bleDevice"

    .line 449
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->isConnected(Lcom/polidea/rxandroidble2_codemao/RxBleDevice;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 450
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->bluetoothDeviceInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;

    if-eqz p1, :cond_97

    .line 451
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->getConnectionObservable()Lio/reactivex/Observable;

    move-result-object v0

    if-nez v0, :cond_28

    goto/16 :goto_97

    .line 452
    :cond_28
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_97

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/UUID;

    .line 453
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    .line 452
    :goto_4c
    check-cast v1, Ljava/util/UUID;

    if-nez v1, :cond_51

    goto :goto_97

    .line 455
    :cond_51
    invoke-interface {p4, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/Observable;

    .line 456
    sget-object p4, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$bluetoothAction$disposable$1;->INSTANCE:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$bluetoothAction$disposable$1;

    new-instance v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda18;

    invoke-direct {v0, p4}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda18;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p4, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$bluetoothAction$disposable$2;

    invoke-direct {p4, p5}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$bluetoothAction$disposable$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p5, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda10;

    invoke-direct {p5, p4}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda10;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0, p5}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p4, ""

    if-nez p3, :cond_84

    .line 464
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 465
    iget-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->notificationObservableMap:Ljava/util/HashMap;

    if-nez p2, :cond_78

    move-object p2, p4

    :cond_78
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_a2

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_a2

    .line 467
    :cond_84
    iget-object p3, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p3, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 468
    iget-object p3, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->notificationObservableMap:Ljava/util/HashMap;

    if-nez p2, :cond_8e

    move-object p2, p4

    :cond_8e
    const-string p4, "disposable"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a2

    :cond_97
    :goto_97
    return-void

    .line 471
    :cond_98
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Bluetooth is disconnected!!!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a2
    :goto_a2
    return-void
.end method

.method private static final bluetoothAction$lambda$30(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final bluetoothAction$lambda$31(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final cancelAllScanResult()V
    .registers 5

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    .line 499
    invoke-virtual {v2}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v2

    invoke-interface {v2}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "scanResult.bleDevice.macAddress"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 501
    :cond_28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 502
    invoke-virtual {p0, v1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->disconnect(Ljava/lang/String;)V

    goto :goto_2c

    :cond_3c
    return-void
.end method

.method private static final connect$lambda$19(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 14

    const-string v0, "$connectData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$function1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$errorCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/ConnectData;->getPeripheralId()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/ConnectData;->getPeripheralId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->findBluetoothDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    move-result-object p0

    if-nez p0, :cond_23

    return-void

    .line 213
    :cond_23
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object p0

    if-eqz p0, :cond_f4

    .line 215
    sget-object v1, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "蓝牙,发起连接:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1, p0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->isConnected(Lcom/polidea/rxandroidble2_codemao/RxBleDevice;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "蓝牙,判定为已连接:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport(Ljava/lang/String;)V

    return-void

    .line 220
    :cond_62
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v4

    const-string v1, "create<Boolean>()"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 222
    invoke-interface {p0, v1}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->establishConnection(Z)Lio/reactivex/Observable;

    move-result-object v1

    .line 223
    invoke-virtual {v1, v4}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    .line 224
    invoke-static {}, Lcom/jakewharton/rx/ReplayingShare;->instance()Lcom/jakewharton/rx/ReplayingShare;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v1

    .line 225
    new-instance v8, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;

    .line 226
    invoke-interface {p0}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    const-string v2, "bleDevice.macAddress"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "connectionObservable"

    .line 228
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move-object v5, v1

    .line 225
    invoke-direct/range {v2 .. v7}, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;-><init>(Ljava/lang/String;Lio/reactivex/subjects/PublishSubject;Lio/reactivex/Observable;Lio/reactivex/disposables/Disposable;Ljava/util/List;)V

    .line 232
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v3, 0x1

    .line 233
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v3

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$1;

    invoke-direct {v4, v2, p1, v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Ljava/lang/String;)V

    new-instance v5, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda13;

    invoke-direct {v5, v4}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda13;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v4, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$2;->INSTANCE:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$2;

    .line 238
    new-instance v6, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda5;

    invoke-direct {v6, v4}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v4, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda2;->INSTANCE:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda2;

    .line 233
    new-instance v7, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$4;

    invoke-direct {v7, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$4;-><init>(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;)V

    .line 238
    new-instance v9, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda4;

    invoke-direct {v9, v7}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 233
    invoke-virtual {v3, v5, v6, v4, v9}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 240
    sget-object v3, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$1;->INSTANCE:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$1;

    new-instance v4, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda20;

    invoke-direct {v4, v3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda20;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v4}, Lio/reactivex/Observable;->flatMapSingle(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 241
    new-instance v3, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$2;

    invoke-direct {v3, v8, p2, p0, v2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$2;-><init>(Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;Lkotlin/jvm/functions/Function1;Lcom/polidea/rxandroidble2_codemao/RxBleDevice;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    new-instance p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda15;

    invoke-direct {p0, v3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda15;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$3;

    invoke-direct {v3, v2, p2, p3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$3;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 261
    new-instance p2, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda16;

    invoke-direct {p2, v3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda16;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 241
    invoke-virtual {v1, p0, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    .line 286
    invoke-virtual {v8, p0}, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 287
    iget-object p0, p1, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->bluetoothDeviceInfoHashMap:Ljava/util/HashMap;

    invoke-interface {p0, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f4
    return-void
.end method

.method private static final connect$lambda$19$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final connect$lambda$19$lambda$13(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final connect$lambda$19$lambda$14()V
    .registers 0

    return-void
.end method

.method private static final connect$lambda$19$lambda$15(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final connect$lambda$19$lambda$16(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/SingleSource;

    return-object p0
.end method

.method private static final connect$lambda$19$lambda$17(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final connect$lambda$19$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final disposeBlueScan$lambda$27(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    if-eqz v1, :cond_1a

    .line 401
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1a
    const/4 v0, 0x0

    .line 403
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private static final enableNotifications$lambda$26(Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 11

    const-string v0, "$notificationsData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$errorCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->getPeripheralId()Ljava/lang/String;

    move-result-object v2

    .line 366
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->getCharacteristicId()Ljava/lang/String;

    move-result-object v3

    .line 367
    new-instance v5, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1;

    invoke-direct {v5, p0, p3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1;-><init>(Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;Lkotlin/jvm/functions/Function1;)V

    .line 390
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->getEnable()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    move v4, p0

    goto :goto_2f

    :cond_2d
    const/4 p0, 0x1

    const/4 v4, 0x1

    :goto_2f
    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->bluetoothAction(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final findBluetoothDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;
    .registers 5

    const/4 v0, 0x0

    .line 530
    :cond_1
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 531
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "scanResultCacheList[i]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    add-int/lit8 v0, v0, 0x1

    .line 533
    invoke-virtual {v1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v2

    .line 534
    invoke-interface {v2}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method private static final observeStateChange$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final observeStateChange$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final read$lambda$25(Lcom/codemao/toolssdk/model/dsbridge/ReadData;Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 11

    const-string v0, "$readData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$errorCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$function1"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/ReadData;->getPeripheralId()Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/ReadData;->getCharacteristicId()Ljava/lang/String;

    move-result-object v3

    .line 345
    new-instance v5, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1;

    invoke-direct {v5, p3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    const/4 v4, 0x1

    move-object v1, p1

    move-object v6, p2

    .line 354
    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->bluetoothAction(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final scanBleDevices$checkScanResult(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;[Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/utils/RxBlueClientUtils;",
            "[",
            "Ljava/lang/String;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "[",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 125
    :goto_9
    iget-object v1, v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_95

    .line 126
    iget-object v1, v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "scanResultCacheList[i]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v1

    check-cast v12, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    const/4 v13, 0x1

    if-eqz v7, :cond_2d

    .line 127
    array-length v1, v7

    if-nez v1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    if-eqz v1, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v1, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v1, 0x1

    :goto_2e
    if-eqz v1, :cond_34

    .line 128
    invoke-static {p0, v9, v12}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanBleDevices$delayCallback(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function1;Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V

    goto :goto_91

    .line 130
    :cond_34
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v14

    :cond_38
    :goto_38
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    invoke-virtual {v12}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 132
    invoke-virtual {v12}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v2

    invoke-interface {v2}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 133
    invoke-virtual {v12}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v2

    invoke-interface {v2}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v1, v10, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 135
    invoke-static {p0, v9, v12}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanBleDevices$delayCallback(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function1;Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V

    .line 136
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Boolean;

    aget-object v1, v1, v13

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_38

    .line 137
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v13

    .line 138
    sget-object v1, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->discoverResult$default(Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;Z[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_38

    :cond_91
    :goto_91
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_9

    :cond_95
    return-void
.end method

.method private static final scanBleDevices$delayCallback(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function1;Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/utils/RxBlueClientUtils;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;",
            ")V"
        }
    .end annotation

    .line 117
    iget-object p0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->thread:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;->getDiscoverHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_10

    new-instance v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda28;

    invoke-direct {v0, p2, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda28;-><init>(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method

.method private static final scanBleDevices$delayCallback$lambda$2(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;Lkotlin/jvm/functions/Function1;)V
    .registers 5

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "回调的结果："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-interface {v2}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dBle(Ljava/lang/String;)V

    .line 119
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final scanBleDevices$lambda$11(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;[Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 13

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$resultAndMatch"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$errorCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanDisposable:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_a4

    .line 149
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;-><init>()V

    const/4 v1, 0x2

    .line 150
    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->setScanMode(I)Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 151
    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->setCallbackType(I)Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->build()Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;

    move-result-object v0

    .line 153
    new-instance v2, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter$Builder;

    invoke-direct {v2}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter$Builder;-><init>()V

    .line 154
    invoke-virtual {v2}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter$Builder;->build()Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;

    move-result-object v2

    const-wide/16 v3, 0x64

    .line 155
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v5}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$filterDispose$1;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$filterDispose$1;-><init>(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;[Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V

    new-instance p3, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda12;

    invoke-direct {p3, v4}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda12;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v4, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$filterDispose$2;->INSTANCE:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$filterDispose$2;

    .line 157
    new-instance v5, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda8;

    invoke-direct {v5, v4}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v4, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda1;->INSTANCE:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda1;

    .line 155
    new-instance v6, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$filterDispose$4;

    invoke-direct {v6, p0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$filterDispose$4;-><init>(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;)V

    .line 157
    new-instance v7, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda19;

    invoke-direct {v7, v6}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda19;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 155
    invoke-virtual {v3, p3, v5, v4, v7}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p3

    .line 158
    invoke-virtual {p0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->getRxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    move-result-object v3

    new-array v1, v1, [Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 159
    invoke-virtual {v3, v0, v1}, Lcom/polidea/rxandroidble2_codemao/RxBleClient;->scanBleDevices(Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;[Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;)Lio/reactivex/Observable;

    move-result-object v0

    .line 160
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lio/reactivex/disposables/Disposable;Lkotlin/jvm/internal/Ref$ObjectRef;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p3

    .line 170
    new-instance v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$2;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$2;-><init>(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;)V

    new-instance v1, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p3, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p3

    .line 176
    new-instance v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$3;

    invoke-direct {v0, p0, p2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$3;-><init>(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 177
    new-instance p2, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda7;

    invoke-direct {p2, v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 176
    new-instance v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$4;

    invoke-direct {v0, p1, p4}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$4;-><init>([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 189
    new-instance p1, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda11;

    invoke-direct {p1, v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda11;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 176
    invoke-virtual {p3, p2, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 158
    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanDisposable:Lio/reactivex/disposables/Disposable;

    goto :goto_ae

    .line 197
    :cond_a4
    sget-object p4, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "不为空"

    invoke-virtual {p4, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dBle(Ljava/lang/String;)V

    .line 198
    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanBleDevices$checkScanResult(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;[Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V

    :goto_ae
    return-void
.end method

.method private static final scanBleDevices$lambda$11$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final scanBleDevices$lambda$11$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final scanBleDevices$lambda$11$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final scanBleDevices$lambda$11$lambda$5()V
    .registers 0

    return-void
.end method

.method private static final scanBleDevices$lambda$11$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final scanBleDevices$lambda$11$lambda$7(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lio/reactivex/disposables/Disposable;Lkotlin/jvm/internal/Ref$ObjectRef;[Ljava/lang/String;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$resultAndMatch"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->disposeBlueScan()V

    .line 163
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 164
    iget-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Boolean;

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_43

    .line 165
    sget-object p0, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "是否扫描到蓝牙设备:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Boolean;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",没有匹配的设备"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p3, p1}, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->discoverResult(Z[Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_43
    sget-object p0, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    const-string p1, "蓝牙,扫描结束"

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport(Ljava/lang/String;)V

    .line 168
    sget-object p0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p1, "扫描结束"

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dBle(Ljava/lang/String;)V

    return-void
.end method

.method private static final scanBleDevices$lambda$11$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final scanBleDevices$lambda$11$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final write$lambda$24(Lcom/codemao/toolssdk/model/dsbridge/WriteData;Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .registers 10

    const-string v0, "$writeData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$errorCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/WriteData;->getPeripheralId()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/WriteData;->getCharacteristicId()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-direct {p1, v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->findBluetoothDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    move-result-object v2

    if-nez v2, :cond_23

    return-void

    .line 297
    :cond_23
    invoke-virtual {v2}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v2

    const-string v3, "bleDevice"

    .line 298
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->isConnected(Lcom/polidea/rxandroidble2_codemao/RxBleDevice;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 299
    iget-object v2, p1, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->bluetoothDeviceInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;

    if-eqz v0, :cond_a1

    .line 300
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->getConnectionObservable()Lio/reactivex/Observable;

    move-result-object v2

    if-nez v2, :cond_43

    goto :goto_a1

    .line 301
    :cond_43
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/UUID;

    .line 302
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v1, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4d

    goto :goto_67

    :cond_66
    const/4 v3, 0x0

    .line 301
    :goto_67
    check-cast v3, Ljava/util/UUID;

    if-nez v3, :cond_6c

    goto :goto_a1

    .line 305
    :cond_6c
    invoke-virtual {v2}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

    move-result-object v0

    .line 306
    new-instance v1, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1;

    invoke-direct {v1, v3, p0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1;-><init>(Ljava/util/UUID;Lcom/codemao/toolssdk/model/dsbridge/WriteData;)V

    new-instance p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda21;

    invoke-direct {p0, v1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda21;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p0

    .line 323
    new-instance v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$2;

    invoke-direct {v0, p2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    new-instance p2, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda6;

    invoke-direct {p2, v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$3;

    invoke-direct {v0, p3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$3;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 325
    new-instance p3, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda17;

    invoke-direct {p3, v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda17;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 323
    invoke-virtual {p0, p2, p3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    const-string p2, "writeData: WriteData, ca…t)\n                    })"

    .line 325
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iget-object p1, p1, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1, p0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    nop

    :cond_a1
    :goto_a1
    return-void
.end method

.method private static final write$lambda$24$lambda$21(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/SingleSource;

    return-object p0
.end method

.method private static final write$lambda$24$lambda$22(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final write$lambda$24$lambda$23(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final connect(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/ConnectData;",
            "Lkotlin/jvm/functions/Function1<",
            "-[",
            "Ljava/lang/String;",
            "*>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "connectData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "function1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->thread:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;->getDiscoverHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1f

    new-instance v1, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda22;

    invoke-direct {v1, p1, p0, p2, p3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda22;-><init>(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    return-void
.end method

.method public final disconnect(Ljava/lang/String;)V
    .registers 5

    .line 419
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->bluetoothDeviceInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;

    if-eqz v0, :cond_36

    .line 421
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->getPublishSubject()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 422
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->getDisposable()Lio/reactivex/disposables/Disposable;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 423
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->getDisposable()Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_30

    .line 425
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->getDisposable()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 427
    :cond_30
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->bluetoothDeviceInfoHashMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    return-void
.end method

.method public final disconnectAllDevices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->bluetoothDeviceInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "bluetoothDeviceInfoHashMap.entries"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1851
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 410
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 411
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->disconnect(Ljava/lang/String;)V

    .line 412
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_37
    return-object v0
.end method

.method public final disposeBlueScan()V
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->thread:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;->getDiscoverHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 399
    :cond_c
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->thread:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;->getDiscoverHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1c

    new-instance v1, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda26;-><init>(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    return-void
.end method

.method public final enableNotifications(Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notificationsData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->thread:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;->getDiscoverHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1f

    new-instance v1, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda23;

    invoke-direct {v1, p1, p0, p3, p2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda23;-><init>(Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    return-void
.end method

.method public final getRxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->rxBleClient:Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final isConnected(Lcom/polidea/rxandroidble2_codemao/RxBleDevice;)Z
    .registers 3

    const-string v0, "bleDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    invoke-interface {p1}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getConnectionState()Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    move-result-object p1

    sget-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->CONNECTED:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    if-ne p1, v0, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method public final isScanning()Z
    .registers 2

    .line 482
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final observeStateChange(Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->getRxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/RxBleClient;->observeStateChanges()Lio/reactivex/Observable;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$observeStateChange$disposable$1;

    invoke-direct {v1, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$observeStateChange$disposable$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 98
    new-instance v2, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda14;

    invoke-direct {v2, v1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda14;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 97
    new-instance v1, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$observeStateChange$disposable$2;

    invoke-direct {v1, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$observeStateChange$disposable$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 99
    new-instance p1, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda9;

    invoke-direct {p1, v1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 97
    invoke-virtual {v0, v2, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->bleStateDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 101
    :cond_2c
    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->bleStateDispose:Lio/reactivex/disposables/Disposable;

    .line 102
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final onDestroy()V
    .registers 3

    .line 486
    invoke-virtual {p0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->disposeBlueScan()V

    .line 487
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->notificationObservableMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 488
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_15

    .line 489
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 491
    :cond_15
    invoke-direct {p0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->cancelAllScanResult()V

    .line 492
    invoke-virtual {p0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->disconnectAllDevices()Ljava/util/List;

    .line 493
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->thread:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;->getDiscoverHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_27

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_27
    return-void
.end method

.method public final read(Lcom/codemao/toolssdk/model/dsbridge/ReadData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/ReadData;",
            "Lkotlin/jvm/functions/Function1<",
            "-[B*>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "readData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "function1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->thread:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;->getDiscoverHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1f

    new-instance v1, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda24;

    invoke-direct {v1, p1, p0, p3, p2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda24;-><init>(Lcom/codemao/toolssdk/model/dsbridge/ReadData;Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    return-void
.end method

.method public final readRssi(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)I
    .registers 3

    const-string v0, "connectData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ConnectData;->getPeripheralId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->findBluetoothDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    move-result-object p1

    if-nez p1, :cond_12

    const/16 p1, -0x3e7

    return p1

    .line 477
    :cond_12
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getRssi()I

    move-result p1

    return p1
.end method

.method public final scanBleDevices([Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "执行扫描"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dBle(Ljava/lang/String;)V

    .line 122
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->thread:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;->getDiscoverHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_38

    new-instance v1, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda27;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda27;-><init>(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;[Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_38
    return-void
.end method

.method public final write(Lcom/codemao/toolssdk/model/dsbridge/WriteData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/WriteData;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "writeData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->thread:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$DiscoverThread;->getDiscoverHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1f

    new-instance v1, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1, p0, p2, p3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$$ExternalSyntheticLambda25;-><init>(Lcom/codemao/toolssdk/model/dsbridge/WriteData;Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    return-void
.end method
