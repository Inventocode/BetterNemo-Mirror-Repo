.class public final enum Lcom/codemao/toolssdk/manager/WebLocalType;
.super Ljava/lang/Enum;
.source "WebLocalResourceManager.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/toolssdk/manager/WebLocalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/toolssdk/manager/WebLocalType;

.field public static final enum INTL_ROKI:Lcom/codemao/toolssdk/manager/WebLocalType;

.field public static final enum ROKI:Lcom/codemao/toolssdk/manager/WebLocalType;


# direct methods
.method private static final synthetic $values()[Lcom/codemao/toolssdk/manager/WebLocalType;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/codemao/toolssdk/manager/WebLocalType;

    sget-object v1, Lcom/codemao/toolssdk/manager/WebLocalType;->ROKI:Lcom/codemao/toolssdk/manager/WebLocalType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/toolssdk/manager/WebLocalType;->INTL_ROKI:Lcom/codemao/toolssdk/manager/WebLocalType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 34
    new-instance v0, Lcom/codemao/toolssdk/manager/WebLocalType;

    const-string v1, "ROKI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/manager/WebLocalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/manager/WebLocalType;->ROKI:Lcom/codemao/toolssdk/manager/WebLocalType;

    .line 35
    new-instance v0, Lcom/codemao/toolssdk/manager/WebLocalType;

    const-string v1, "INTL_ROKI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/manager/WebLocalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/manager/WebLocalType;->INTL_ROKI:Lcom/codemao/toolssdk/manager/WebLocalType;

    invoke-static {}, Lcom/codemao/toolssdk/manager/WebLocalType;->$values()[Lcom/codemao/toolssdk/manager/WebLocalType;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/manager/WebLocalType;->$VALUES:[Lcom/codemao/toolssdk/manager/WebLocalType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/toolssdk/manager/WebLocalType;
    .registers 2

    const-class v0, Lcom/codemao/toolssdk/manager/WebLocalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/toolssdk/manager/WebLocalType;

    return-object p0
.end method

.method public static values()[Lcom/codemao/toolssdk/manager/WebLocalType;
    .registers 1

    sget-object v0, Lcom/codemao/toolssdk/manager/WebLocalType;->$VALUES:[Lcom/codemao/toolssdk/manager/WebLocalType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/toolssdk/manager/WebLocalType;

    return-object v0
.end method
