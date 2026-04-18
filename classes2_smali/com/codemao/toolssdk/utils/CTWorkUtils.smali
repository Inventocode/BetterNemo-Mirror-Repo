.class public final Lcom/codemao/toolssdk/utils/CTWorkUtils;
.super Ljava/lang/Object;
.source "CTWorkUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/utils/CTWorkUtils;

.field private static final WORK_ENTER_FROM_FREE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/utils/CTWorkUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/CTWorkUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/utils/CTWorkUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTWorkUtils;

    const-string v0, "from_free"

    .line 8
    sput-object v0, Lcom/codemao/toolssdk/utils/CTWorkUtils;->WORK_ENTER_FROM_FREE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getWORK_ENTER_FROM_FREE()Ljava/lang/String;
    .registers 2

    .line 8
    sget-object v0, Lcom/codemao/toolssdk/utils/CTWorkUtils;->WORK_ENTER_FROM_FREE:Ljava/lang/String;

    return-object v0
.end method

.method public final getWorkType(Ljava/lang/String;Lcom/codemao/toolssdk/manager/PlayerType;)Ljava/lang/String;
    .registers 4

    const-string v0, "KN_PLAYER"

    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 13
    sget-object v0, Lcom/codemao/toolssdk/manager/PlayerType;->Share:Lcom/codemao/toolssdk/manager/PlayerType;

    if-ne p2, v0, :cond_e

    const-string p1, "TY_PLAYER"

    :cond_e
    return-object p1
.end method
