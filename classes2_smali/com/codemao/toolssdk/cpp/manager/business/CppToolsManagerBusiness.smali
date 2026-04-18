.class public abstract Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;
.super Lcom/codemao/toolssdk/cpp/manager/business/pythonoj/PythonOJToolsManager;
.source "CppToolsManagerBusiness.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness$Companion;
    }
.end annotation


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

.field private enableSafeAreaTopBarHeight:Z

.field private enterForm:Ljava/lang/String;

.field private playerType:Lcom/codemao/toolssdk/manager/PlayerType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/business/pythonoj/PythonOJToolsManager;-><init>()V

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->enableSafeAreaTopBarHeight:Z

    return-void
.end method


# virtual methods
.method public closeCameraDialog(Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    const-string v2, "closeDialog"

    .line 235
    invoke-interface {v0, v2, v1, p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/IPosMessageToWebView;->postCameraEvent(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    :cond_11
    return-void
.end method

.method public enableSafeAreaTopBarHeight(Z)V
    .registers 2

    .line 139
    iput-boolean p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->enableSafeAreaTopBarHeight:Z

    return-void
.end method

.method public getCameraCloseCallback()Lkotlin/jvm/functions/Function0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->cameraCloseCallback:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getCanRecordCall()Lkotlin/jvm/functions/Function1;
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

    .line 267
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->canRecordCall:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getCrateStartTime()Ljava/lang/Long;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->createStartTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getEnterFrom()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->enterForm:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayerType()Lcom/codemao/toolssdk/manager/PlayerType;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->playerType:Lcom/codemao/toolssdk/manager/PlayerType;

    return-object v0
.end method

.method public isEnableSafeAreaTopBarHeight()Z
    .registers 2

    .line 135
    iget-boolean v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->enableSafeAreaTopBarHeight:Z

    return v0
.end method

.method public setCameraCloseCallback(Lkotlin/jvm/functions/Function0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->cameraCloseCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public setCameraPrepareListener(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 121
    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBiz;->setCameraPrepareListener(Lkotlin/jvm/functions/Function1;)V

    .line 123
    :cond_9
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->cameraPrepareListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setCreateStartTime(Ljava/lang/Long;)V
    .registers 5

    .line 240
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "设置startTime："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogOther;->dTanY(Ljava/lang/String;)V

    .line 241
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->createStartTime:Ljava/lang/Long;

    return-void
.end method

.method public final setEnterFrom(Ljava/lang/String;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->enterForm:Ljava/lang/String;

    return-void
.end method

.method public setPlayerType(Lcom/codemao/toolssdk/manager/PlayerType;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->playerType:Lcom/codemao/toolssdk/manager/PlayerType;

    return-void
.end method

.method public setVideoPlayCompleteListener(Lkotlin/jvm/functions/Function2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;",
            "-",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 213
    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBiz;->setVideoPlayCompleteListener(Lkotlin/jvm/functions/Function2;)V

    :cond_9
    return-void
.end method
