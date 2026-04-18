.class public final enum Lcom/codemao/toolssdk/manager/LanguageMode;
.super Ljava/lang/Enum;
.source "CMToolsManager.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/toolssdk/manager/LanguageMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/toolssdk/manager/LanguageMode;

.field public static final enum EnUS:Lcom/codemao/toolssdk/manager/LanguageMode;

.field public static final enum ZhCN:Lcom/codemao/toolssdk/manager/LanguageMode;


# instance fields
.field private final str:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/codemao/toolssdk/manager/LanguageMode;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/codemao/toolssdk/manager/LanguageMode;

    sget-object v1, Lcom/codemao/toolssdk/manager/LanguageMode;->ZhCN:Lcom/codemao/toolssdk/manager/LanguageMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/toolssdk/manager/LanguageMode;->EnUS:Lcom/codemao/toolssdk/manager/LanguageMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 72
    new-instance v0, Lcom/codemao/toolssdk/manager/LanguageMode;

    const-string v1, "ZhCN"

    const/4 v2, 0x0

    const-string v3, "zh-CN"

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/toolssdk/manager/LanguageMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codemao/toolssdk/manager/LanguageMode;->ZhCN:Lcom/codemao/toolssdk/manager/LanguageMode;

    new-instance v0, Lcom/codemao/toolssdk/manager/LanguageMode;

    const-string v1, "EnUS"

    const/4 v2, 0x1

    const-string v3, "en-US"

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/toolssdk/manager/LanguageMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codemao/toolssdk/manager/LanguageMode;->EnUS:Lcom/codemao/toolssdk/manager/LanguageMode;

    invoke-static {}, Lcom/codemao/toolssdk/manager/LanguageMode;->$values()[Lcom/codemao/toolssdk/manager/LanguageMode;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/manager/LanguageMode;->$VALUES:[Lcom/codemao/toolssdk/manager/LanguageMode;

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

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/codemao/toolssdk/manager/LanguageMode;->str:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/toolssdk/manager/LanguageMode;
    .registers 2

    const-class v0, Lcom/codemao/toolssdk/manager/LanguageMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/toolssdk/manager/LanguageMode;

    return-object p0
.end method

.method public static values()[Lcom/codemao/toolssdk/manager/LanguageMode;
    .registers 1

    sget-object v0, Lcom/codemao/toolssdk/manager/LanguageMode;->$VALUES:[Lcom/codemao/toolssdk/manager/LanguageMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/toolssdk/manager/LanguageMode;

    return-object v0
.end method


# virtual methods
.method public final getStr()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/LanguageMode;->str:Ljava/lang/String;

    return-object v0
.end method
