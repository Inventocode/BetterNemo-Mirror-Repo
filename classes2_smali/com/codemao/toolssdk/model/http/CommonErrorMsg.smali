.class public final Lcom/codemao/toolssdk/model/http/CommonErrorMsg;
.super Ljava/lang/Object;
.source "CommonErrorLog.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private androidVer:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private final platform:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;

.field private stack:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userNickName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->stack:Ljava/lang/String;

    const-string p1, "android"

    .line 87
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->platform:Ljava/lang/String;

    const-string p1, ""

    .line 88
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->sdkVersion:Ljava/lang/String;

    const-string p1, "3.11.1-SNAPSHOT"

    .line 91
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->sdkVersion:Ljava/lang/String;

    .line 92
    sget-object p1, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2b

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2c

    :cond_2b
    move-object p2, p3

    :goto_2c
    iput-object p2, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->userId:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object p1

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getUsername()Ljava/lang/String;

    move-result-object p3

    :cond_38
    iput-object p3, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->userNickName:Ljava/lang/String;

    .line 96
    :try_start_3a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "utf-8"

    .line 95
    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "encode(\n                …EL, \"utf-8\"\n            )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->model:Ljava/lang/String;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    const-string p1, "unknown"

    .line 99
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->model:Ljava/lang/String;

    .line 101
    :goto_64
    sget-object p1, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->getAppVersionCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->appVersion:Ljava/lang/String;

    .line 102
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string p2, "MODEL"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->model:Ljava/lang/String;

    .line 103
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string p2, "RELEASE"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->androidVer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAndroidVer()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->androidVer:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->model:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlatform()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getStack()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->stack:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserNickName()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->userNickName:Ljava/lang/String;

    return-object v0
.end method

.method public final setAndroidVer(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->androidVer:Ljava/lang/String;

    return-void
.end method

.method public final setAppVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->message:Ljava/lang/String;

    return-void
.end method

.method public final setModel(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->model:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->name:Ljava/lang/String;

    return-void
.end method

.method public final setSdkVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public final setStack(Ljava/lang/String;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->stack:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->userId:Ljava/lang/String;

    return-void
.end method

.method public final setUserNickName(Ljava/lang/String;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;->userNickName:Ljava/lang/String;

    return-void
.end method
