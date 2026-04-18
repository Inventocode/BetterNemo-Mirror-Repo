.class public final enum Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;
.super Ljava/lang/Enum;
.source "ScanCallbackType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

.field public static final enum CALLBACK_TYPE_ALL_MATCHES:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

.field public static final enum CALLBACK_TYPE_BATCH:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

.field public static final enum CALLBACK_TYPE_FIRST_MATCH:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

.field public static final enum CALLBACK_TYPE_MATCH_LOST:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

.field public static final enum CALLBACK_TYPE_UNKNOWN:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

.field public static final enum CALLBACK_TYPE_UNSPECIFIED:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;


# direct methods
.method private static synthetic $values()[Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    .line 4
    sget-object v1, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->CALLBACK_TYPE_ALL_MATCHES:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->CALLBACK_TYPE_FIRST_MATCH:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->CALLBACK_TYPE_MATCH_LOST:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->CALLBACK_TYPE_BATCH:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->CALLBACK_TYPE_UNSPECIFIED:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->CALLBACK_TYPE_UNKNOWN:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 5
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    const-string v1, "CALLBACK_TYPE_ALL_MATCHES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->CALLBACK_TYPE_ALL_MATCHES:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    .line 6
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    const-string v1, "CALLBACK_TYPE_FIRST_MATCH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->CALLBACK_TYPE_FIRST_MATCH:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    .line 7
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    const-string v1, "CALLBACK_TYPE_MATCH_LOST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->CALLBACK_TYPE_MATCH_LOST:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    .line 8
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    const-string v1, "CALLBACK_TYPE_BATCH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->CALLBACK_TYPE_BATCH:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    .line 9
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    const-string v1, "CALLBACK_TYPE_UNSPECIFIED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->CALLBACK_TYPE_UNSPECIFIED:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    .line 10
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    const-string v1, "CALLBACK_TYPE_UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->CALLBACK_TYPE_UNKNOWN:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    .line 4
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->$values()[Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    move-result-object v0

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->$VALUES:[Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;
    .registers 2

    .line 4
    const-class v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    return-object p0
.end method

.method public static values()[Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;
    .registers 1

    .line 4
    sget-object v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->$VALUES:[Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    invoke-virtual {v0}, [Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    return-object v0
.end method
