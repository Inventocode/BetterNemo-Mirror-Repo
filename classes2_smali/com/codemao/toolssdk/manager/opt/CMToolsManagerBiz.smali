.class public Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;
.super Lcom/codemao/toolssdk/manager/opt/CMToolsManagerRegisterActivity;
.source "CMToolsManagerBiz.kt"


# instance fields
.field private cameraCloseCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private cameraPrepareListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private canRecordCall:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private createStartTime:Ljava/lang/Long;

.field private enterForm:Ljava/lang/String;

.field private playerType:Lcom/codemao/toolssdk/manager/PlayerType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerRegisterActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCameraCloseCallback()Lkotlin/jvm/functions/Function0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "获取摄像头关闭的回调："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->cameraCloseCallback:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->cameraCloseCallback:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getCameraPrepareListener()Lkotlin/jvm/functions/Function1;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "获取摄像头开启的回调："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->cameraPrepareListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->cameraPrepareListener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getCanRecordCall()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->canRecordCall:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getCrateStartTime()Ljava/lang/Long;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->createStartTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final getEnterFrom()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->enterForm:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayerType()Lcom/codemao/toolssdk/manager/PlayerType;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->playerType:Lcom/codemao/toolssdk/manager/PlayerType;

    return-object v0
.end method

.method public final setCreateStartTime(Ljava/lang/Long;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->createStartTime:Ljava/lang/Long;

    return-void
.end method

.method public final setEnterFrom(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->enterForm:Ljava/lang/String;

    return-void
.end method

.method public final setPlayerType(Lcom/codemao/toolssdk/manager/PlayerType;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->playerType:Lcom/codemao/toolssdk/manager/PlayerType;

    return-void
.end method
