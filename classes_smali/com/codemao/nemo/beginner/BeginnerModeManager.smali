.class public final Lcom/codemao/nemo/beginner/BeginnerModeManager;
.super Ljava/lang/Object;
.source "BeginnerModeManager.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/beginner/BeginnerModeManager;

.field private static final isBeginner$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/beginner/BeginnerModeManager;

    invoke-direct {v0}, Lcom/codemao/nemo/beginner/BeginnerModeManager;-><init>()V

    sput-object v0, Lcom/codemao/nemo/beginner/BeginnerModeManager;->INSTANCE:Lcom/codemao/nemo/beginner/BeginnerModeManager;

    .line 49
    sget-object v0, Lcom/codemao/nemo/beginner/BeginnerModeManager$isBeginner$2;->INSTANCE:Lcom/codemao/nemo/beginner/BeginnerModeManager$isBeginner$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/codemao/nemo/beginner/BeginnerModeManager;->isBeginner$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkShowPop()Z
    .registers 7

    .line 57
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->IsCurUserBeginner()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 60
    :cond_8
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    if-nez v0, :cond_f

    return v1

    .line 63
    :cond_f
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getRegister_mills()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1e

    return v1

    .line 68
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/codemao/nemo/util/TimeUtil;->calcDayDiffWithTime(JJ)F

    move-result v0

    const/high16 v2, 0x40e00000  # 7.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    return v1
.end method

.method public final needShowBeginner()Z
    .registers 7

    .line 23
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getIsNewbee()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 27
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_2e

    if-nez v0, :cond_f

    return v1

    .line 34
    :cond_f
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getRegister_mills()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1e

    return v1

    .line 43
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/codemao/nemo/util/TimeUtil;->calcDayDiffWithTime(JJ)F

    move-result v0

    const/high16 v2, 0x40e00000  # 7.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2e

    const/4 v0, 0x1

    return v0

    :catch_2e
    :cond_2e
    return v1
.end method
