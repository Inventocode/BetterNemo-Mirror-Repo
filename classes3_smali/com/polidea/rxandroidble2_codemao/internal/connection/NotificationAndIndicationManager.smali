.class Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;
.super Ljava/lang/Object;
.source "NotificationAndIndicationManager.java"


# static fields
.field static final CLIENT_CHARACTERISTIC_CONFIG_UUID:Ljava/util/UUID;


# instance fields
.field final activeNotificationObservableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/ActiveCharacteristicNotification;",
            ">;"
        }
    .end annotation
.end field

.field final bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field final configDisable:[B

.field final configEnableIndication:[B

.field final configEnableNotification:[B

.field final descriptorWriter:Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;

.field final gattCallback:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;


# direct methods
.method public static synthetic $r8$lambda$1RLWZsbX-C8aa5Y4bLMmGV7U4eM(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->lambda$setCharacteristicNotification$3(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$GS3nF0ZcbffnhIGtRqrqfORxCgM(Lio/reactivex/Completable;Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .registers 2

    invoke-static {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->lambda$setupModeTransformer$4(Lio/reactivex/Completable;Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$I4UvRmGdPtXhY8sDHkpcRFWvVYk(Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;[BLio/reactivex/Completable;)Lio/reactivex/CompletableSource;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->lambda$teardownModeTransformer$6(Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;[BLio/reactivex/Completable;)Lio/reactivex/CompletableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LiTcRBzoJBUDLa-FyzcBq5fckaE(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/Throwable;)Lio/reactivex/CompletableSource;
    .registers 2

    invoke-static {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->lambda$writeClientCharacteristicConfig$9(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/Throwable;)Lio/reactivex/CompletableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_qjz-HKpjtY-UmJ4ihsmr-7Y_bE(Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;Landroid/bluetooth/BluetoothGattCharacteristic;ZLcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)Lio/reactivex/ObservableSource;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->lambda$setupServerInitiatedCharacteristicRead$2(Landroid/bluetooth/BluetoothGattCharacteristic;ZLcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aBYGk_7S-jwQfBogJKh1i_fDBGU(Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;[BLio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->lambda$setupModeTransformer$5(Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;[BLio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$axDJ0QH-FaSQdtWuTkNXeYgNj9Q(Lio/reactivex/subjects/PublishSubject;Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .registers 2

    invoke-static {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->lambda$setupServerInitiatedCharacteristicRead$0(Lio/reactivex/subjects/PublishSubject;Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jKkttstCWeqELykzMAXEv0-UQDE(Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;Lio/reactivex/subjects/PublishSubject;Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->lambda$setupServerInitiatedCharacteristicRead$1(Lio/reactivex/subjects/PublishSubject;Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nLc8qZD4Yas1dxW7lBmRAesb1HY(Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->lambda$observeOnCharacteristicChangeCallbacks$7(Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xZblwjelhiKLnozXleLCC2H1e5U(Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;)[B
    .registers 1

    invoke-static {p0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->lambda$observeOnCharacteristicChangeCallbacks$8(Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;)[B

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    .line 35
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->CLIENT_CHARACTERISTIC_CONFIG_UUID:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>([B[B[BLandroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;)V
    .registers 8

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->activeNotificationObservableMap:Ljava/util/Map;

    .line 55
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->configEnableNotification:[B

    .line 56
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->configEnableIndication:[B

    .line 57
    iput-object p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->configDisable:[B

    .line 58
    iput-object p4, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 59
    iput-object p5, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->gattCallback:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    .line 60
    iput-object p6, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->descriptorWriter:Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;

    return-void
.end method

.method private static synthetic lambda$observeOnCharacteristicChangeCallbacks$7(Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 174
    invoke-virtual {p1, p0}, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$observeOnCharacteristicChangeCallbacks$8(Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;)[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    iget-object p0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;->data:[B

    return-object p0
.end method

.method private static synthetic lambda$setCharacteristicNotification$3(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 121
    :cond_7
    new-instance p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleCannotSetCharacteristicNotificationException;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleCannotSetCharacteristicNotificationException;-><init>(Landroid/bluetooth/BluetoothGattCharacteristic;ILjava/lang/Throwable;)V

    throw p0
.end method

.method private static synthetic lambda$setupModeTransformer$4(Lio/reactivex/Completable;Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lio/reactivex/Completable;->onErrorComplete()Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->mergeWith(Lio/reactivex/CompletableSource;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setupModeTransformer$5(Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;[BLio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .registers 6

    .line 136
    sget-object v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$1;->$SwitchMap$com$polidea$rxandroidble2_codemao$NotificationSetupMode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_39

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    .line 151
    invoke-static {p1, p2, p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->writeClientCharacteristicConfig(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;[B)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0, p4}, Lio/reactivex/Completable;->andThen(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 141
    :cond_17
    invoke-static {p1, p2, p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->writeClientCharacteristicConfig(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;[B)Lio/reactivex/Completable;

    move-result-object p0

    .line 142
    invoke-virtual {p0}, Lio/reactivex/Completable;->toObservable()Lio/reactivex/Observable;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Lio/reactivex/Observable;->publish()Lio/reactivex/observables/ConnectableObservable;

    move-result-object p0

    .line 144
    invoke-virtual {p0, v0}, Lio/reactivex/observables/ConnectableObservable;->autoConnect(I)Lio/reactivex/Observable;

    move-result-object p0

    .line 145
    invoke-virtual {p0}, Lio/reactivex/Observable;->ignoreElements()Lio/reactivex/Completable;

    move-result-object p0

    .line 147
    invoke-virtual {p4, p0}, Lio/reactivex/Observable;->mergeWith(Lio/reactivex/CompletableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda5;-><init>(Lio/reactivex/Completable;)V

    .line 148
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_39
    return-object p4
.end method

.method private static synthetic lambda$setupServerInitiatedCharacteristicRead$0(Lio/reactivex/subjects/PublishSubject;Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/Observable;

    .line 89
    const-class v1, [B

    .line 90
    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->cast(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 91
    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 89
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Observable;->amb(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setupServerInitiatedCharacteristicRead$1(Lio/reactivex/subjects/PublishSubject;Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 95
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->activeNotificationObservableMap:Ljava/util/Map;

    monitor-enter p1

    .line 96
    :try_start_6
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->activeNotificationObservableMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_29

    .line 99
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Lio/reactivex/Completable;

    move-result-object p1

    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->descriptorWriter:Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->configDisable:[B

    .line 100
    invoke-static {p2, p3, v0, p4}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->teardownModeTransformer(Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)Lio/reactivex/CompletableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->compose(Lio/reactivex/CompletableTransformer;)Lio/reactivex/Completable;

    move-result-object p1

    sget-object p2, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    .line 103
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object p3

    .line 101
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void

    :catchall_29
    move-exception p2

    .line 97
    :try_start_2a
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p2
.end method

.method private synthetic lambda$setupServerInitiatedCharacteristicRead$2(Landroid/bluetooth/BluetoothGattCharacteristic;ZLcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)Lio/reactivex/ObservableSource;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->activeNotificationObservableMap:Ljava/util/Map;

    monitor-enter v0

    .line 68
    :try_start_3
    new-instance v7, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;

    .line 69
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v7, v1, v2}, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;-><init>(Ljava/util/UUID;Ljava/lang/Integer;)V

    .line 71
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->activeNotificationObservableMap:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2_codemao/internal/util/ActiveCharacteristicNotification;

    const/4 v8, 0x1

    if-eqz v1, :cond_3a

    .line 74
    iget-boolean p3, v1, Lcom/polidea/rxandroidble2_codemao/internal/util/ActiveCharacteristicNotification;->isIndication:Z

    if-ne p3, p2, :cond_27

    .line 75
    iget-object p1, v1, Lcom/polidea/rxandroidble2_codemao/internal/util/ActiveCharacteristicNotification;->notificationObservable:Lio/reactivex/Observable;

    monitor-exit v0

    return-object p1

    .line 77
    :cond_27
    new-instance p3, Lcom/polidea/rxandroidble2_codemao/exceptions/BleConflictingNotificationAlreadySetException;

    .line 78
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    if-nez p2, :cond_30

    goto :goto_31

    :cond_30
    const/4 v8, 0x0

    :goto_31
    invoke-direct {p3, p1, v8}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleConflictingNotificationAlreadySetException;-><init>(Ljava/util/UUID;Z)V

    .line 77
    invoke-static {p3}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_3a
    if-eqz p2, :cond_3f

    .line 83
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->configEnableIndication:[B

    goto :goto_41

    :cond_3f
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->configEnableNotification:[B

    .line 84
    :goto_41
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v3

    .line 86
    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v2, p1, v8}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Lio/reactivex/Completable;

    move-result-object v2

    iget-object v4, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->gattCallback:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    .line 87
    invoke-static {v4, v7}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->observeOnCharacteristicChangeCallbacks(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;)Lio/reactivex/Observable;

    move-result-object v4

    invoke-static {v4}, Lcom/polidea/rxandroidble2_codemao/internal/util/ObservableUtil;->justOnNext(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/reactivex/Completable;->andThen(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v2

    iget-object v4, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->descriptorWriter:Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;

    .line 88
    invoke-static {v4, p1, v1, p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->setupModeTransformer(Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, v3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda6;-><init>(Lio/reactivex/subjects/PublishSubject;)V

    .line 89
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v9

    new-instance v10, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda3;

    move-object v1, v10

    move-object v2, p0

    move-object v4, v7

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda3;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;Lio/reactivex/subjects/PublishSubject;Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)V

    .line 93
    invoke-virtual {v9, v10}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->gattCallback:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    .line 106
    invoke-virtual {p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->observeDisconnect()Lio/reactivex/Observable;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->mergeWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 107
    invoke-virtual {p1, v8}, Lio/reactivex/Observable;->replay(I)Lio/reactivex/observables/ConnectableObservable;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lio/reactivex/observables/ConnectableObservable;->refCount()Lio/reactivex/Observable;

    move-result-object p1

    .line 109
    iget-object p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->activeNotificationObservableMap:Ljava/util/Map;

    new-instance v1, Lcom/polidea/rxandroidble2_codemao/internal/util/ActiveCharacteristicNotification;

    invoke-direct {v1, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/util/ActiveCharacteristicNotification;-><init>(Lio/reactivex/Observable;Z)V

    invoke-interface {p3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    monitor-exit v0

    return-object p1

    :catchall_98
    move-exception p1

    .line 111
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_3 .. :try_end_9a} :catchall_98

    throw p1
.end method

.method private static synthetic lambda$teardownModeTransformer$6(Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;[BLio/reactivex/Completable;)Lio/reactivex/CompletableSource;
    .registers 6

    .line 162
    sget-object v0, Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;->COMPAT:Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    if-ne p0, v0, :cond_5

    return-object p4

    .line 165
    :cond_5
    invoke-static {p1, p2, p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->writeClientCharacteristicConfig(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;[B)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p4, p0}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$writeClientCharacteristicConfig$9(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/Throwable;)Lio/reactivex/CompletableSource;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleCannotSetCharacteristicNotificationException;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleCannotSetCharacteristicNotificationException;-><init>(Landroid/bluetooth/BluetoothGattCharacteristic;ILjava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/Completable;->error(Ljava/lang/Throwable;)Lio/reactivex/Completable;

    move-result-object p0

    return-object p0
.end method

.method static observeOnCharacteristicChangeCallbacks(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;)Lio/reactivex/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;",
            ")",
            "Lio/reactivex/Observable<",
            "[B>;"
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->getOnCharacteristicChanged()Lio/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda8;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;)V

    .line 174
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda7;->INSTANCE:Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda7;

    .line 175
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static setCharacteristicNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Lio/reactivex/Completable;
    .registers 4

    .line 119
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p0

    return-object p0
.end method

.method static setupModeTransformer(Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)Lio/reactivex/ObservableTransformer;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "[B",
            "Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;",
            ")",
            "Lio/reactivex/ObservableTransformer<",
            "Lio/reactivex/Observable<",
            "[B>;",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3, p1, p0, p2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda1;-><init>(Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;[B)V

    return-object v0
.end method

.method static teardownModeTransformer(Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)Lio/reactivex/CompletableTransformer;
    .registers 5

    .line 161
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p1, p0, p2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda0;-><init>(Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;[B)V

    return-object v0
.end method

.method static writeClientCharacteristicConfig(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;[B)Lio/reactivex/Completable;
    .registers 4

    .line 184
    sget-object v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->CLIENT_CHARACTERISTIC_CONFIG_UUID:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    if-nez v0, :cond_14

    .line 186
    new-instance p1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleCannotSetCharacteristicNotificationException;

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleCannotSetCharacteristicNotificationException;-><init>(Landroid/bluetooth/BluetoothGattCharacteristic;ILjava/lang/Throwable;)V

    invoke-static {p1}, Lio/reactivex/Completable;->error(Ljava/lang/Throwable;)Lio/reactivex/Completable;

    move-result-object p0

    return-object p0

    .line 193
    :cond_14
    invoke-virtual {p1, v0, p2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)Lio/reactivex/Completable;

    move-result-object p1

    new-instance p2, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 194
    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method setupServerInitiatedCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;Z)Lio/reactivex/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda9;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;Landroid/bluetooth/BluetoothGattCharacteristic;ZLcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
