.class public Lcom/codemao/toolssdk/utils/ExtLogOther;
.super Ljava/lang/Object;
.source "ExtLogOther.kt"


# instance fields
.field private final LEAK_CANARY:Ljava/lang/String;

.field private final OTHER_SHOULD_INTERCEPT:Ljava/lang/String;

.field private final OTHER_TAG:Ljava/lang/String;

.field private final OTHER_TANYUE:Ljava/lang/String;

.field private enable:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "otr_"

    .line 7
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogOther;->OTHER_TAG:Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "shouldIntercept"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogOther;->OTHER_SHOULD_INTERCEPT:Ljava/lang/String;

    const-string v0, "leak_canary"

    .line 10
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogOther;->LEAK_CANARY:Ljava/lang/String;

    const-string v0, "ctl_tanyue"

    .line 12
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogOther;->OTHER_TANYUE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dLeak(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogOther;->LEAK_CANARY:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dShouldInterceptRequest(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-boolean v0, p0, Lcom/codemao/toolssdk/utils/ExtLogOther;->enable:Z

    if-eqz v0, :cond_e

    .line 26
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogOther;->OTHER_SHOULD_INTERCEPT:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public final dTanY(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogOther;->OTHER_TANYUE:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final isEnable()Z
    .registers 2

    .line 17
    iget-boolean v0, p0, Lcom/codemao/toolssdk/utils/ExtLogOther;->enable:Z

    return v0
.end method
