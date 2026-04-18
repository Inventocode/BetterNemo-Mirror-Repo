.class public Lcom/codemao/nemo/bean/CommonErrorMsg;
.super Ljava/lang/Object;
.source "CommonErrorMsg.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private androidVer:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private stack:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userNickName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->name:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->message:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->stack:Ljava/lang/String;

    const-string p1, "android"

    .line 28
    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->platform:Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    const-string p2, ""

    if-eqz p1, :cond_38

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->userId:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getNickname()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->userNickName:Ljava/lang/String;

    .line 35
    :cond_38
    :try_start_38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getPhoneBrand()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getPhoneModel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "utf-8"

    invoke-static {p1, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->model:Ljava/lang/String;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_5c} :catch_5d

    goto :goto_61

    :catch_5d
    const-string p1, "unknown"

    .line 38
    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->model:Ljava/lang/String;

    .line 40
    :goto_61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getAppVersionCode()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->appVersion:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getPhoneModel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->model:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getOsVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->androidVer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAndroidVer()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->androidVer:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStack()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->stack:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroidVer(Ljava/lang/String;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->androidVer:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->message:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->model:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->name:Ljava/lang/String;

    return-void
.end method

.method public setStack(Ljava/lang/String;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->stack:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorMsg;->userId:Ljava/lang/String;

    return-void
.end method
