.class public final Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;
.super Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionBizImpl;
.source "CMToolsManagerCompanionImpl.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

.field private static enableAliLogReport:Z

.field private static env:Lcom/codemao/toolssdk/manager/CMTEnvMode;

.field private static notchMargin:F

.field private static toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

.field private static userData:Lcom/codemao/toolssdk/model/dsbridge/UserData;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    invoke-direct {v0}, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->INSTANCE:Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;

    const/high16 v0, -0x40800000  # -1.0f

    .line 20
    sput v0, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->notchMargin:F

    .line 25
    sget-object v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;->RELEASE:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    sput-object v0, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->env:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->enableAliLogReport:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionBizImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommonReportData()Ljava/lang/String;
    .registers 3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->userData:Lcom/codemao/toolssdk/model/dsbridge/UserData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userLocalCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/codemao/toolssdk/manager/WebLocalResourceManager;->INSTANCE:Lcom/codemao/toolssdk/manager/WebLocalResourceManager;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/WebLocalResourceManager;->getUseLocalCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->getDeviceInfoString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnableAliReport()Z
    .registers 2

    .line 34
    sget-boolean v0, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->enableAliLogReport:Z

    return v0
.end method

.method public getEnv()Lcom/codemao/toolssdk/manager/CMTEnvMode;
    .registers 4

    .line 50
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manager2 companion获取当前环境："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->env:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dSDK(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->env:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    return-object v0
.end method

.method public getNotchMargin()F
    .registers 2

    .line 20
    sget v0, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->notchMargin:F

    return v0
.end method

.method public getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;
    .registers 4

    .line 55
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manager2 companion获取userData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->userData:Lcom/codemao/toolssdk/model/dsbridge/UserData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dSDK(Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->userData:Lcom/codemao/toolssdk/model/dsbridge/UserData;

    return-object v0
.end method

.method public sendErrorReport(Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V
    .registers 5
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

    .line 99
    sget-object v0, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->getCommonReportData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {v0, p1, p2}, Lcom/codemao/toolssdk/manager/ReportManager;->sendErrorReport(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public setCookieData(Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;)V
    .registers 2

    return-void
.end method

.method public setEnv(Lcom/codemao/toolssdk/manager/CMTEnvMode;)V
    .registers 5

    const-string v0, "env"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sput-object p1, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->env:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    .line 45
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manager2 companion设置当前环境："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dSDK(Ljava/lang/String;)V

    return-void
.end method

.method public setNotchMargin(F)V
    .registers 3

    .line 22
    sput p1, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->notchMargin:F

    .line 23
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "manager2 companion设置刘海高度"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dSDK(Ljava/lang/String;)V

    return-void
.end method

.method public setToolsData(Lcom/codemao/toolssdk/model/dsbridge/ToolsData;)V
    .registers 2

    .line 73
    sput-object p1, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    return-void
.end method

.method public setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)V
    .registers 5

    .line 60
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manager2 companion设置userData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dSDK(Ljava/lang/String;)V

    .line 61
    sput-object p1, Lcom/codemao/toolssdk/evolving/manager/compan/CMToolsManagerCompanionImpl;->userData:Lcom/codemao/toolssdk/model/dsbridge/UserData;

    return-void
.end method
