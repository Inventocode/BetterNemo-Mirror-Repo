.class public abstract Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;
.super Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;
.source "WoodToolsManagerBuilderBiz.kt"


# instance fields
.field private baseUrl:Ljava/lang/String;

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

.field private enableSafeAreaTopBarHeight:Z

.field private enterForm:Ljava/lang/String;

.field private interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private projectName:Ljava/lang/String;

.field private userAgentPython:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->enableSafeAreaTopBarHeight:Z

    return-void
.end method


# virtual methods
.method protected final getBaseUrl()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->baseUrl:Ljava/lang/String;

    return-object v0
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

    .line 53
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->cameraCloseCallback:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getCameraPrepareListener()Lkotlin/jvm/functions/Function1;
    .registers 2
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

    .line 41
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->cameraPrepareListener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getEnterFrom()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->enterForm:Ljava/lang/String;

    return-object v0
.end method

.method protected final getInterceptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method protected final getProjectName()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->projectName:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAgentPython()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->userAgentPython:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabledSafeAreaTopBarHeight()Z
    .registers 2

    .line 27
    iget-boolean v0, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->enableSafeAreaTopBarHeight:Z

    return v0
.end method

.method public setEnterFrom(Ljava/lang/String;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->enterForm:Ljava/lang/String;

    return-object p0
.end method
