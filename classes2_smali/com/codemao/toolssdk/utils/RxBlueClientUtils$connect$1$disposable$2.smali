.class final Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->connect(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxBlueClientUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxBlueClientUtils.kt\ncom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$2\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,541:1\n37#2,2:542\n*S KotlinDebug\n*F\n+ 1 RxBlueClientUtils.kt\ncom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$2\n*L\n255#1:542,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $bleDevice:Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

.field final synthetic $bluetoothDeviceInfo:Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;

.field final synthetic $function1:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "[",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic $isCalledFunction1:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;Lkotlin/jvm/functions/Function1;Lcom/polidea/rxandroidble2_codemao/RxBleDevice;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;",
            "Lkotlin/jvm/functions/Function1<",
            "-[",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/polidea/rxandroidble2_codemao/RxBleDevice;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$2;->$bluetoothDeviceInfo:Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;

    iput-object p2, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$2;->$function1:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$2;->$bleDevice:Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    iput-object p4, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$2;->$isCalledFunction1:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 241
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$2;->invoke(Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;)V
    .registers 9

    const-string v0, "rxBleDeviceServices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;->getBluetoothGattServices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 247
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    .line 250
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 251
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    const-string v4, "characteristic.uuid"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 254
    :cond_4f
    iget-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$2;->$bluetoothDeviceInfo:Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;

    invoke-virtual {p1, v1}, Lcom/codemao/toolssdk/model/dsbridge/BluetoothDeviceInfo;->setCharacteristics(Ljava/util/List;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 38
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 255
    check-cast p1, [Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$2;->$function1:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "流程-蓝牙"

    const-string v0, "连接成功"

    .line 257
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object v1, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$2;->$bleDevice:Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    invoke-interface {p1}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->connect$default(Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 259
    iget-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$2;->$isCalledFunction1:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method
