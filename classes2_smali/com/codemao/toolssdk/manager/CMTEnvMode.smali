.class public final enum Lcom/codemao/toolssdk/manager/CMTEnvMode;
.super Ljava/lang/Enum;
.source "CMToolsManager.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/toolssdk/manager/CMTEnvMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/toolssdk/manager/CMTEnvMode;

.field public static final enum DEV:Lcom/codemao/toolssdk/manager/CMTEnvMode;

.field public static final enum RELEASE:Lcom/codemao/toolssdk/manager/CMTEnvMode;

.field public static final enum STAGING:Lcom/codemao/toolssdk/manager/CMTEnvMode;

.field public static final enum TEST:Lcom/codemao/toolssdk/manager/CMTEnvMode;

.field public static final enum TEST01:Lcom/codemao/toolssdk/manager/CMTEnvMode;

.field public static final enum TEST02:Lcom/codemao/toolssdk/manager/CMTEnvMode;

.field public static final enum TEST03:Lcom/codemao/toolssdk/manager/CMTEnvMode;

.field public static final enum TEST04:Lcom/codemao/toolssdk/manager/CMTEnvMode;

.field public static final enum TEST05:Lcom/codemao/toolssdk/manager/CMTEnvMode;

.field public static final enum TEST06:Lcom/codemao/toolssdk/manager/CMTEnvMode;


# direct methods
.method private static final synthetic $values()[Lcom/codemao/toolssdk/manager/CMTEnvMode;
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/codemao/toolssdk/manager/CMTEnvMode;

    sget-object v1, Lcom/codemao/toolssdk/manager/CMTEnvMode;->DEV:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST01:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST02:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST03:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST04:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST05:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST06:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/toolssdk/manager/CMTEnvMode;->STAGING:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/toolssdk/manager/CMTEnvMode;->RELEASE:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 68
    new-instance v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const-string v1, "DEV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/manager/CMTEnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;->DEV:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    new-instance v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const-string v1, "TEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/manager/CMTEnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    new-instance v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const-string v1, "TEST01"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/manager/CMTEnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST01:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    new-instance v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const-string v1, "TEST02"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/manager/CMTEnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST02:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    new-instance v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const-string v1, "TEST03"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/manager/CMTEnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST03:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    new-instance v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const-string v1, "TEST04"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/manager/CMTEnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST04:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    new-instance v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const-string v1, "TEST05"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/manager/CMTEnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST05:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    new-instance v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const-string v1, "TEST06"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/manager/CMTEnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST06:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    new-instance v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const-string v1, "STAGING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/manager/CMTEnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;->STAGING:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    new-instance v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const-string v1, "RELEASE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/manager/CMTEnvMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;->RELEASE:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    invoke-static {}, Lcom/codemao/toolssdk/manager/CMTEnvMode;->$values()[Lcom/codemao/toolssdk/manager/CMTEnvMode;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;->$VALUES:[Lcom/codemao/toolssdk/manager/CMTEnvMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/toolssdk/manager/CMTEnvMode;
    .registers 2

    const-class v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/toolssdk/manager/CMTEnvMode;

    return-object p0
.end method

.method public static values()[Lcom/codemao/toolssdk/manager/CMTEnvMode;
    .registers 1

    sget-object v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;->$VALUES:[Lcom/codemao/toolssdk/manager/CMTEnvMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/toolssdk/manager/CMTEnvMode;

    return-object v0
.end method
