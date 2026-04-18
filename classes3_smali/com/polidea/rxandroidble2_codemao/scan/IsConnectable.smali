.class public final enum Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;
.super Ljava/lang/Enum;
.source "IsConnectable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

.field public static final enum CONNECTABLE:Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

.field public static final enum LEGACY_UNKNOWN:Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

.field public static final enum NOT_CONNECTABLE:Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;


# direct methods
.method private static synthetic $values()[Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    .line 3
    sget-object v1, Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;->LEGACY_UNKNOWN:Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;->CONNECTABLE:Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;->NOT_CONNECTABLE:Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    const-string v1, "LEGACY_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;->LEGACY_UNKNOWN:Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    .line 5
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    const-string v1, "CONNECTABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;->CONNECTABLE:Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    .line 6
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    const-string v1, "NOT_CONNECTABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;->NOT_CONNECTABLE:Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    .line 3
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;->$values()[Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    move-result-object v0

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;->$VALUES:[Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;
    .registers 2

    .line 3
    const-class v0, Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    return-object p0
.end method

.method public static values()[Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;
    .registers 1

    .line 3
    sget-object v0, Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;->$VALUES:[Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    invoke-virtual {v0}, [Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    return-object v0
.end method
