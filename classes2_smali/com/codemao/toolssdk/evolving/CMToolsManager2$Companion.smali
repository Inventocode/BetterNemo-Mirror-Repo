.class public final Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;
.super Ljava/lang/Object;
.source "CMToolsManager2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/evolving/CMToolsManager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->INSTANCE:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    iput-object v0, p0, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->$$delegate_0:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public addAppForegroundListener()V
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->$$delegate_0:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionBizImpl;->addAppForegroundListener()V

    return-void
.end method

.method public final envMode(Lcom/codemao/toolssdk/manager/CMTEnvMode;)V
    .registers 3

    const-string v0, "envMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->setEnv(Lcom/codemao/toolssdk/manager/CMTEnvMode;)V

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

    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->$$delegate_0:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionBizImpl;->getAiCameraAvailableListener()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public final getAppVersionCode()Ljava/lang/String;
    .registers 2

    .line 13
    invoke-static {}, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->access$getAppVersionCode$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnableAliReport()Z
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->$$delegate_0:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->getEnableAliReport()Z

    move-result v0

    return v0
.end method

.method public getEnv()Lcom/codemao/toolssdk/manager/CMTEnvMode;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->$$delegate_0:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->getEnv()Lcom/codemao/toolssdk/manager/CMTEnvMode;

    move-result-object v0

    return-object v0
.end method

.method public final getEnvMode()Lcom/codemao/toolssdk/manager/CMTEnvMode;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->getEnv()Lcom/codemao/toolssdk/manager/CMTEnvMode;

    move-result-object v0

    return-object v0
.end method

.method public getNotchMargin()F
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->$$delegate_0:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->getNotchMargin()F

    move-result v0

    return v0
.end method

.method public getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->$$delegate_0:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v0

    return-object v0
.end method

.method public setAiCameraAvailable(I)V
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->$$delegate_0:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionBizImpl;->setAiCameraAvailable(I)V

    return-void
.end method

.method public final setAppVersionCode(Ljava/lang/String;)V
    .registers 2

    .line 13
    invoke-static {p1}, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->access$setAppVersionCode$cp(Ljava/lang/String;)V

    return-void
.end method

.method public setEnv(Lcom/codemao/toolssdk/manager/CMTEnvMode;)V
    .registers 3

    const-string v0, "env"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->$$delegate_0:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->setEnv(Lcom/codemao/toolssdk/manager/CMTEnvMode;)V

    return-void
.end method

.method public setNotchMargin(F)V
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->$$delegate_0:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->setNotchMargin(F)V

    return-void
.end method

.method public setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)V
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->$$delegate_0:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)V

    return-void
.end method
