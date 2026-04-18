.class Lcom/codemao/nemo/http/PolicyUtils$1;
.super Lcom/codemao/nemo/http/LocalNetCallBack;
.source "PolicyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/http/PolicyUtils;->notifyPolicy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBack<",
        "Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;)V
    .registers 4

    if-eqz p1, :cond_16

    .line 51
    iget-boolean p1, p1, Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;->agreed_enable:Z

    if-nez p1, :cond_16

    const/4 p1, 0x0

    .line 52
    invoke-static {p1}, Lcom/codemao/nemo/http/PolicyUtils;->setPolicy(Lcom/codemao/nemo/http/LocalNetCallBack;)V

    .line 53
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 55
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v0

    sput-wide v0, Lcom/codemao/nemo/http/PolicyUtils;->currentCachedUserId:J

    :cond_16
    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 48
    check-cast p1, Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/http/PolicyUtils$1;->onSuc(Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;)V

    return-void
.end method
