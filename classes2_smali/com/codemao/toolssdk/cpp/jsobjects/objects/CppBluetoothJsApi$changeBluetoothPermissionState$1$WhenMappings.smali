.class public final synthetic Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$1$WhenMappings;
.super Ljava/lang/Object;
.source "CppBluetoothJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->values()[Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->READY:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->BLUETOOTH_NOT_AVAILABLE:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->LOCATION_PERMISSION_NOT_GRANTED:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->BLUETOOTH_NOT_ENABLED:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->LOCATION_SERVICES_NOT_ENABLED:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    sput-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$1$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
