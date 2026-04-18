.class public final Lcom/codemao/creativestore/utils/RxBlueClientUtils;
.super Ljava/lang/Object;
.source "RxBlueClientUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativestore/utils/RxBlueClientUtils$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxBlueClientUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxBlueClientUtils.kt\ncom/codemao/creativestore/utils/RxBlueClientUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,402:1\n1819#2,2:403\n*E\n*S KotlinDebug\n*F\n+ 1 RxBlueClientUtils.kt\ncom/codemao/creativestore/utils/RxBlueClientUtils\n*L\n298#1,2:403\n*E\n"
.end annotation


# instance fields
.field private final bluetoothDeviceInfoHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

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


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->bluetoothDeviceInfoHashMap:Ljava/util/HashMap;

    .line 45
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static final synthetic access$addScanResult(Lcom/codemao/creativestore/utils/RxBlueClientUtils;Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->addScanResult(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V

    return-void
.end method

.method private final addScanResult(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V
    .registers 8

    .line 368
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v0

    const-string v1, "bleScanResult.bleDevice"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    const/4 v0, 0x0

    .line 371
    iget-object v2, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1b
    if-ge v0, v2, :cond_52

    .line 372
    iget-object v3, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "scanResultCacheList[i]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    invoke-virtual {v3}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v3

    const-string v4, "bleDevice"

    .line 373
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 373
    invoke-static {v3, v4, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 378
    iget-object v1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 382
    :cond_52
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final bluetoothAction(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    .line 274
    invoke-direct {p0, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->findBluetoothDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 275
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v0

    const-string v1, "bleDevice"

    .line 276
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->isConnected(Lcom/polidea/rxandroidble2_codemao/RxBleDevice;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 277
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->bluetoothDeviceInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;

    if-eqz p1, :cond_64

    .line 278
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;->getConnectionObservable()Lio/reactivex/Observable;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 279
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_64

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/UUID;

    .line 280
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_49

    :cond_48
    const/4 v1, 0x0

    .line 279
    :goto_49
    check-cast v1, Ljava/util/UUID;

    if-eqz v1, :cond_64

    .line 282
    invoke-interface {p3, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/Observable;

    .line 283
    sget-object p2, Lcom/codemao/creativestore/utils/RxBlueClientUtils$bluetoothAction$disposable$1;->INSTANCE:Lcom/codemao/creativestore/utils/RxBlueClientUtils$bluetoothAction$disposable$1;

    new-instance p3, Lcom/codemao/creativestore/utils/RxBlueClientUtils$bluetoothAction$disposable$2;

    invoke-direct {p3, p4}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$bluetoothAction$disposable$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 290
    iget-object p2, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_6f

    :cond_64
    return-void

    .line 292
    :cond_65
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Bluetooth is disconnected!!!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6f
    :goto_6f
    return-void
.end method

.method private final cancelAllScanResult()V
    .registers 5

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    iget-object v1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    const-string v3, "scanResult"

    .line 360
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v2

    const-string v3, "scanResult.bleDevice"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "scanResult.bleDevice.macAddress"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 362
    :cond_32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 363
    invoke-virtual {p0, v1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->disconnect(Ljava/lang/String;)V

    goto :goto_36

    :cond_46
    return-void
.end method

.method private final findBluetoothDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;
    .registers 6

    const/4 v0, 0x0

    .line 391
    :cond_1
    iget-object v1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 392
    iget-object v1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "scanResultCacheList[i]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    add-int/lit8 v0, v0, 0x1

    .line 394
    invoke-virtual {v1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v2

    const-string v3, "bleDevice"

    .line 395
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2c
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final connect(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/jsbridge/bean/ConnectData;",
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "function1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;->getPeripheralId()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;->getPeripheralId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->findBluetoothDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    move-result-object p1

    if-eqz p1, :cond_87

    .line 124
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object p1

    if-eqz p1, :cond_87

    .line 126
    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->isConnected(Lcom/polidea/rxandroidble2_codemao/RxBleDevice;)Z

    move-result v1

    const-string v2, "bleDevice.macAddress"

    if-eqz v1, :cond_35

    .line 127
    invoke-interface {p1}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->disconnect(Ljava/lang/String;)V

    .line 129
    :cond_35
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v5

    const-string v1, "PublishSubject.create<Boolean>()"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 131
    invoke-interface {p1, v1}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->establishConnection(Z)Lio/reactivex/Observable;

    move-result-object v3

    .line 132
    invoke-virtual {v3, v5}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v3

    .line 133
    invoke-static {}, Lcom/jakewharton/rx/ReplayingShare;->instance()Lcom/jakewharton/rx/ReplayingShare;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v9

    .line 134
    new-instance v10, Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;

    .line 135
    invoke-interface {p1}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "connectionObservable"

    .line 137
    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v10

    move-object v6, v9

    .line 134
    invoke-direct/range {v3 .. v8}, Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;-><init>(Ljava/lang/String;Lio/reactivex/subjects/PublishSubject;Lio/reactivex/Observable;Lio/reactivex/disposables/Disposable;Ljava/util/List;)V

    .line 141
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 143
    sget-object v1, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$1;->INSTANCE:Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$1;

    invoke-virtual {v9, v1}, Lio/reactivex/Observable;->flatMapSingle(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 144
    new-instance v2, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$2;

    invoke-direct {v2, v10, p2, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$2;-><init>(Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 162
    new-instance v3, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$3;

    invoke-direct {v3, p1, p2, p3}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$3;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 144
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 170
    invoke-virtual {v10, p1}, Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 171
    iget-object p1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->bluetoothDeviceInfoHashMap:Ljava/util/HashMap;

    invoke-interface {p1, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_87
    return-void
.end method

.method public final disconnect(Ljava/lang/String;)V
    .registers 7

    const-string v0, "peripheralId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->bluetoothDeviceInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;

    if-eqz v0, :cond_70

    .line 310
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;->getPublishSubject()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 312
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;->getDisposable()Lio/reactivex/disposables/Disposable;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;->getDisposable()Lio/reactivex/disposables/Disposable;

    move-result-object v1

    if-nez v1, :cond_27

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_27
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_39

    .line 314
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;->getDisposable()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    if-nez v0, :cond_36

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_36
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 316
    :cond_39
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->bluetoothDeviceInfoHashMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    .line 318
    invoke-virtual {v3}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v3

    const-string v4, "scanResult.bleDevice"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, p1, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_45

    move-object v1, v2

    .line 317
    :cond_67
    check-cast v1, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    if-eqz v1, :cond_70

    .line 324
    iget-object p1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_70
    return-void
.end method

.method public final disconnectAllDevices()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    iget-object v1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->bluetoothDeviceInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "bluetoothDeviceInfoHashMap.entries"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1819
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 299
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 300
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "it.key"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->disconnect(Ljava/lang/String;)V

    .line 301
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_3c
    return-object v0
.end method

.method public final disposeBlueScan()V
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_11

    .line 344
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_11
    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final enableNotifications(Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;",
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;->getPeripheralId()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;->getCharacteristicId()Ljava/lang/String;

    move-result-object v1

    .line 246
    new-instance v2, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1;

    invoke-direct {v2, p1, p2}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1;-><init>(Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;Lkotlin/jvm/functions/Function1;)V

    .line 265
    invoke-direct {p0, v0, v1, v2, p3}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->bluetoothAction(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getRxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->rxBleClient:Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    if-nez v0, :cond_c

    .line 49
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/CreativeCenterUtils;->rxBleClient:Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    iput-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->rxBleClient:Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    .line 51
    :cond_c
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->rxBleClient:Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    if-nez v0, :cond_13

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_13
    return-object v0
.end method

.method public final isConnected(Lcom/polidea/rxandroidble2_codemao/RxBleDevice;)Z
    .registers 3

    const-string v0, "bleDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
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

    .line 336
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanDisposable:Lio/reactivex/disposables/Disposable;

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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->getRxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/RxBleClient;->observeStateChanges()Lio/reactivex/Observable;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/codemao/creativestore/utils/RxBlueClientUtils$observeStateChange$disposable$1;

    invoke-direct {v1, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$observeStateChange$disposable$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 59
    new-instance v2, Lcom/codemao/creativestore/utils/RxBlueClientUtils$observeStateChange$disposable$2;

    invoke-direct {v2, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$observeStateChange$disposable$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 57
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final onDestroy()V
    .registers 2

    .line 350
    invoke-virtual {p0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->disposeBlueScan()V

    .line 351
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_10

    .line 352
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 354
    :cond_10
    invoke-direct {p0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->cancelAllScanResult()V

    return-void
.end method

.method public final read(Lcom/codemao/creativestore/jsbridge/bean/ReadData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/jsbridge/bean/ReadData;",
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "function1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/ReadData;->getPeripheralId()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/ReadData;->getCharacteristicId()Ljava/lang/String;

    move-result-object p1

    .line 227
    new-instance v1, Lcom/codemao/creativestore/utils/RxBlueClientUtils$read$callback$1;

    invoke-direct {v1, p2}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$read$callback$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 235
    invoke-direct {p0, v0, p1, v1, p3}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->bluetoothAction(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final readRssi(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;)I
    .registers 3

    const-string v0, "connectData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;->getPeripheralId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->findBluetoothDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 331
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getRssi()I

    move-result p1

    return p1

    :cond_14
    const/16 p1, -0x3e7

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

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_59

    .line 74
    new-instance p1, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;

    invoke-direct {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;-><init>()V

    .line 75
    invoke-virtual {p1, v1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->setScanMode(I)Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p1, v0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->setCallbackType(I)Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings$Builder;->build()Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;

    move-result-object p1

    .line 78
    new-instance v1, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter$Builder;

    invoke-direct {v1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter$Builder;-><init>()V

    .line 79
    invoke-virtual {v1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter$Builder;->build()Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->getRxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    move-result-object v3

    new-array v0, v0, [Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;

    aput-object v1, v0, v2

    .line 81
    invoke-virtual {v3, p1, v0}, Lcom/polidea/rxandroidble2_codemao/RxBleClient;->scanBleDevices(Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;[Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;)Lio/reactivex/Observable;

    move-result-object p1

    .line 82
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 83
    new-instance v0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$scanBleDevices$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$scanBleDevices$1;-><init>(Lcom/codemao/creativestore/utils/RxBlueClientUtils;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    .line 85
    new-instance v0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$scanBleDevices$2;

    invoke-direct {v0, p0, p2}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$scanBleDevices$2;-><init>(Lcom/codemao/creativestore/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function1;)V

    .line 89
    new-instance p2, Lcom/codemao/creativestore/utils/RxBlueClientUtils$scanBleDevices$3;

    invoke-direct {p2, p3}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$scanBleDevices$3;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 84
    invoke-virtual {p1, v0, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanDisposable:Lio/reactivex/disposables/Disposable;

    goto :goto_be

    :cond_59
    const/4 p3, 0x0

    .line 97
    :goto_5a
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_be

    .line 98
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanResultCacheList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "scanResultCacheList[i]"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    if-nez p1, :cond_75

    .line 100
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bb

    .line 102
    :cond_75
    array-length v3, p1

    const/4 v4, 0x0

    :goto_77
    if-ge v4, v3, :cond_bb

    aget-object v5, p1, v4

    .line 105
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v6

    if-eqz v6, :cond_b8

    .line 104
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v6

    const-string v7, "scanResult.bleDevice"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b8

    .line 105
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a4
    const-string v7, "scanResult.bleDevice.name!!"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v5, :cond_ae

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_ae
    const/4 v7, 0x0

    invoke-static {v6, v5, v2, v1, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 107
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b8
    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    :cond_bb
    :goto_bb
    add-int/lit8 p3, p3, 0x1

    goto :goto_5a

    :cond_be
    :goto_be
    return-void
.end method

.method public final write(Lcom/codemao/creativestore/jsbridge/bean/WriteData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/jsbridge/bean/WriteData;",
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->getPeripheralId()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->getCharacteristicId()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-direct {p0, v0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->findBluetoothDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    move-result-object v2

    if-eqz v2, :cond_8a

    .line 180
    invoke-virtual {v2}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v2

    const-string v3, "bleDevice"

    .line 181
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->isConnected(Lcom/polidea/rxandroidble2_codemao/RxBleDevice;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 182
    iget-object v2, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->bluetoothDeviceInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;

    if-eqz v0, :cond_8a

    .line 183
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;->getConnectionObservable()Lio/reactivex/Observable;

    move-result-object v2

    if-eqz v2, :cond_8a

    .line 184
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/UUID;

    .line 185
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v1, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_46

    goto :goto_60

    :cond_5f
    const/4 v3, 0x0

    .line 184
    :goto_60
    check-cast v3, Ljava/util/UUID;

    if-eqz v3, :cond_8a

    .line 188
    invoke-virtual {v2}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

    move-result-object v0

    .line 189
    new-instance v1, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;

    invoke-direct {v1, v3, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;-><init>(Ljava/util/UUID;Lcom/codemao/creativestore/jsbridge/bean/WriteData;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 206
    new-instance v0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$2;

    invoke-direct {v0, p2}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 208
    new-instance p2, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$3;

    invoke-direct {p2, p3}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$3;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 206
    invoke-virtual {p1, v0, p2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "connectionObservable\n   …ck(it)\n                })"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object p2, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    nop

    :cond_8a
    return-void
.end method
