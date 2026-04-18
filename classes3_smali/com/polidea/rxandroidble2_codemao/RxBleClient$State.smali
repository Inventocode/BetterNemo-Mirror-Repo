.class public final enum Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;
.super Ljava/lang/Enum;
.source "RxBleClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2_codemao/RxBleClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

.field public static final enum BLUETOOTH_NOT_AVAILABLE:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

.field public static final enum BLUETOOTH_NOT_ENABLED:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

.field public static final enum LOCATION_PERMISSION_NOT_GRANTED:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

.field public static final enum LOCATION_SERVICES_NOT_ENABLED:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

.field public static final enum READY:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;


# direct methods
.method private static synthetic $values()[Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    .line 21
    sget-object v1, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->BLUETOOTH_NOT_AVAILABLE:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->LOCATION_PERMISSION_NOT_GRANTED:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->BLUETOOTH_NOT_ENABLED:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->LOCATION_SERVICES_NOT_ENABLED:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->READY:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 26
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    const-string v1, "BLUETOOTH_NOT_AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->BLUETOOTH_NOT_AVAILABLE:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    .line 33
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    const-string v1, "LOCATION_PERMISSION_NOT_GRANTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->LOCATION_PERMISSION_NOT_GRANTED:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    .line 37
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    const-string v1, "BLUETOOTH_NOT_ENABLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->BLUETOOTH_NOT_ENABLED:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    .line 41
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    const-string v1, "LOCATION_SERVICES_NOT_ENABLED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->LOCATION_SERVICES_NOT_ENABLED:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    .line 45
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    const-string v1, "READY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->READY:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    .line 21
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->$values()[Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    move-result-object v0

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->$VALUES:[Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;
    .registers 2

    .line 21
    const-class v0, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    return-object p0
.end method

.method public static values()[Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;
    .registers 1

    .line 21
    sget-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->$VALUES:[Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    invoke-virtual {v0}, [Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    return-object v0
.end method
