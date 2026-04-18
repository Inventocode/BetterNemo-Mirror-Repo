.class public final enum Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;
.super Ljava/lang/Enum;
.source "RxBleConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2_codemao/RxBleConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RxBleConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

.field public static final enum CONNECTED:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

.field public static final enum CONNECTING:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

.field public static final enum DISCONNECTED:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

.field public static final enum DISCONNECTING:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    .line 87
    sget-object v1, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->CONNECTING:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->CONNECTED:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->DISCONNECTED:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->DISCONNECTING:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 88
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    const-string v1, "CONNECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->CONNECTING:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    new-instance v0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    const-string v1, "CONNECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->CONNECTED:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    new-instance v0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->DISCONNECTED:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    new-instance v0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    const-string v1, "DISCONNECTING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->DISCONNECTING:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    .line 87
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->$values()[Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    move-result-object v0

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->$VALUES:[Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput-object p3, p0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;
    .registers 2

    .line 87
    const-class v0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    return-object p0
.end method

.method public static values()[Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;
    .registers 1

    .line 87
    sget-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->$VALUES:[Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    invoke-virtual {v0}, [Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RxBleConnectionState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
