.class public abstract Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionBizImpl;
.super Ljava/lang/Object;
.source "CMToolsManagerCompanionBizImpl.kt"


# instance fields
.field private aiCameraAvailableListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private okHttpDns:Lokhttp3/Dns;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAppForegroundListener()V
    .registers 3

    .line 23
    sget-object v0, Lcom/codemao/toolssdk/app/AppStateMonitor;->INSTANCE:Lcom/codemao/toolssdk/app/AppStateMonitor;

    sget-object v1, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionBizImpl$addAppForegroundListener$1;->INSTANCE:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionBizImpl$addAppForegroundListener$1;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/app/AppStateMonitor;->addListener(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public getAiCameraAvailableListener()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionBizImpl;->aiCameraAvailableListener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getOkHttpDns()Lokhttp3/Dns;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionBizImpl;->okHttpDns:Lokhttp3/Dns;

    return-object v0
.end method

.method public setAiCameraAvailable(I)V
    .registers 2

    return-void
.end method
