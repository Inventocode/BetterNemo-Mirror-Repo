.class public Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;
.super Ljava/lang/Object;
.source "BleConnectionCompat.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;->context:Landroid/content/Context;

    return-void
.end method

.method private connectGattCompat(Landroid/bluetooth/BluetoothGattCallback;Landroid/bluetooth/BluetoothDevice;Z)Landroid/bluetooth/BluetoothGatt;
    .registers 6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Connecting without reflection"

    .line 90
    invoke-static {v1, v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_16

    .line 93
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;->context:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-virtual {p2, v0, p3, p1, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1

    .line 95
    :cond_16
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;->context:Landroid/content/Context;

    invoke-virtual {p2, v0, p3, p1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1
.end method

.method private static connectUsingReflection(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCallback;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Connecting using reflection"

    .line 102
    invoke-static {v2, v1}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-static {p0, p2}, Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;->setAutoConnectValue(Landroid/bluetooth/BluetoothGatt;Z)V

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v2, v0

    const-class v3, Landroid/bluetooth/BluetoothGattCallback;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "connect"

    invoke-virtual {p2, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 105
    invoke-virtual {p2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    .line 106
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v0

    aput-object p1, v1, v4

    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private createBluetoothGatt(Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothGatt;
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 112
    const-class v0, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found constructor with args count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-ne v3, v5, :cond_49

    new-array v3, v5, [Ljava/lang/Object;

    .line 117
    iget-object v5, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;->context:Landroid/content/Context;

    aput-object v5, v3, v1

    aput-object p1, v3, v2

    aput-object p2, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    return-object p1

    :cond_49
    new-array v3, v4, [Ljava/lang/Object;

    .line 119
    iget-object v4, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;->context:Landroid/content/Context;

    aput-object v4, v3, v1

    aput-object p1, v3, v2

    aput-object p2, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method private static getIBluetoothGatt(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 130
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBluetoothGatt"

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;->getMethodFromClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 131
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getIBluetoothManager()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 136
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 142
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBluetoothManager"

    invoke-static {v1, v2}, Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;->getMethodFromClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 143
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getMethodFromClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    .line 147
    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    .line 148
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object p0
.end method

.method private static setAutoConnectValue(Landroid/bluetooth/BluetoothGatt;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mAutoConnect"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 156
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method public connectGatt(Landroid/bluetooth/BluetoothDevice;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    .registers 8

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 44
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_66

    if-nez p2, :cond_d

    goto :goto_66

    :cond_d
    const/4 p2, 0x1

    const/4 v0, 0x0

    :try_start_f
    const-string v1, "Trying to connectGatt using reflection."

    new-array v2, v0, [Ljava/lang/Object;

    .line 55
    invoke-static {v1, v2}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;->getIBluetoothManager()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;->getIBluetoothGatt(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2c

    const-string v1, "Couldn\'t get iBluetoothGatt object"

    new-array v2, v0, [Ljava/lang/Object;

    .line 59
    invoke-static {v1, v2}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-direct {p0, p3, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;->connectGattCompat(Landroid/bluetooth/BluetoothGattCallback;Landroid/bluetooth/BluetoothDevice;Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1

    .line 63
    :cond_2c
    invoke-direct {p0, v1, p1}, Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;->createBluetoothGatt(Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    if-nez v1, :cond_3e

    const-string v1, "Couldn\'t create BluetoothGatt object"

    new-array v2, v0, [Ljava/lang/Object;

    .line 66
    invoke-static {v1, v2}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-direct {p0, p3, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;->connectGattCompat(Landroid/bluetooth/BluetoothGattCallback;Landroid/bluetooth/BluetoothDevice;Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1

    .line 70
    :cond_3e
    invoke-static {v1, p3, p2}, Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;->connectUsingReflection(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCallback;Z)Z

    move-result v2

    if-nez v2, :cond_4e

    const-string v2, "Connection using reflection failed, closing gatt"

    new-array v3, v0, [Ljava/lang/Object;

    .line 73
    invoke-static {v2, v3}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_4e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_4e} :catch_59
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_4e} :catch_57
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_4e} :catch_55
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_4e} :catch_53
    .catch Ljava/lang/InstantiationException; {:try_start_f .. :try_end_4e} :catch_51
    .catch Ljava/lang/NoSuchFieldException; {:try_start_f .. :try_end_4e} :catch_4f

    :cond_4e
    return-object v1

    :catch_4f
    move-exception v1

    goto :goto_5a

    :catch_51
    move-exception v1

    goto :goto_5a

    :catch_53
    move-exception v1

    goto :goto_5a

    :catch_55
    move-exception v1

    goto :goto_5a

    :catch_57
    move-exception v1

    goto :goto_5a

    :catch_59
    move-exception v1

    :goto_5a
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Error while trying to connect via reflection"

    .line 84
    invoke-static {v1, v2, v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-direct {p0, p3, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;->connectGattCompat(Landroid/bluetooth/BluetoothGattCallback;Landroid/bluetooth/BluetoothDevice;Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1

    .line 45
    :cond_66
    :goto_66
    invoke-direct {p0, p3, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;->connectGattCompat(Landroid/bluetooth/BluetoothGattCallback;Landroid/bluetooth/BluetoothDevice;Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1
.end method
