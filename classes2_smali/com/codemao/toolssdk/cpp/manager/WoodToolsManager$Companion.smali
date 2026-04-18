.class public final Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;
.super Ljava/lang/Object;
.source "WoodToolsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;
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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->INSTANCE:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;->$$delegate_0:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommonReportData()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;->$$delegate_0:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->getCommonReportData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnv()Lcom/codemao/toolssdk/manager/CMTEnvMode;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;->$$delegate_0:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->getEnv()Lcom/codemao/toolssdk/manager/CMTEnvMode;

    move-result-object v0

    return-object v0
.end method

.method public getOkHttpDns()Lokhttp3/Dns;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;->$$delegate_0:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionBizImpl;->getOkHttpDns()Lokhttp3/Dns;

    move-result-object v0

    return-object v0
.end method

.method public sendErrorReport(Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/IResult<",
            "Lcom/codemao/toolssdk/model/dsbridge/ToolsError;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    const-string v0, "toolsError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;->$$delegate_0:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    invoke-virtual {v0, p1, p2}, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->sendErrorReport(Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public setCookieData(Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;)V
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;->$$delegate_0:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->setCookieData(Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;)V

    return-void
.end method

.method public setToolsData(Lcom/codemao/toolssdk/model/dsbridge/ToolsData;)V
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;->$$delegate_0:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->setToolsData(Lcom/codemao/toolssdk/model/dsbridge/ToolsData;)V

    return-void
.end method

.method public setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)V
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;->$$delegate_0:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)V

    return-void
.end method
