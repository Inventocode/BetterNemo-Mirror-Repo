.class final Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$2;
.super Ljava/lang/Object;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/utils/RxBlueClientUtils;->connect(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxBlueClientUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxBlueClientUtils.kt\ncom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$2\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,402:1\n37#2,2:403\n*E\n*S KotlinDebug\n*F\n+ 1 RxBlueClientUtils.kt\ncom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$2\n*L\n158#1,2:403\n*E\n"
.end annotation


# instance fields
.field final synthetic $bluetoothDeviceInfo:Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;

.field final synthetic $function1:Lkotlin/jvm/functions/Function1;

.field final synthetic $isCalledFunction1:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$2;->$bluetoothDeviceInfo:Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;

    iput-object p2, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$2;->$function1:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$2;->$isCalledFunction1:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;)V
    .registers 7

    const-string v0, "rxBleDeviceServices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;->getBluetoothGattServices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    const-string v3, "bluetoothGattService"

    .line 150
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    .line 153
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    const-string v4, "characteristic"

    .line 154
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    const-string v4, "characteristic.uuid"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 157
    :cond_59
    iget-object p1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$2;->$bluetoothDeviceInfo:Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;

    invoke-virtual {p1, v1}, Lcom/codemao/creativestore/bean/BluetoothDeviceInfo;->setCharacteristics(Ljava/util/List;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 38
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    check-cast p1, [Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$2;->$function1:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object p1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$2;->$isCalledFunction1:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 29
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;

    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$2;->accept(Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;)V

    return-void
.end method
