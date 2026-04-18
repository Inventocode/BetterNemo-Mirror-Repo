.class Lcom/codemao/nemo/http/PolicyUtils$2;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "PolicyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/http/PolicyUtils;->checkPolicy(Lcom/codemao/nemo/http/LocalNetCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/codemao/nemo/http/LocalNetCallBack;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/http/LocalNetCallBack;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/codemao/nemo/http/PolicyUtils$2;->val$callBack:Lcom/codemao/nemo/http/LocalNetCallBack;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/codemao/nemo/http/PolicyUtils$2;->val$callBack:Lcom/codemao/nemo/http/LocalNetCallBack;

    if-eqz v0, :cond_7

    .line 91
    invoke-virtual {v0, p1, p2}, Lcom/codemao/nemo/http/LocalNetCallBack;->onErr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/codemao/nemo/http/PolicyUtils$2;->val$callBack:Lcom/codemao/nemo/http/LocalNetCallBack;

    if-eqz v0, :cond_7

    .line 97
    invoke-virtual {v0, p1, p2}, Lcom/codemao/nemo/http/LocalNetCallBack;->onErr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;)V
    .registers 4

    if-eqz p1, :cond_c

    .line 78
    iget-boolean v0, p1, Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;->agreed_enable:Z

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    .line 79
    sput-boolean v1, Lcom/codemao/nemo/http/PolicyUtils;->isTouristAgreePolicy:Z

    .line 81
    :cond_9
    invoke-static {v0}, Lcom/codemao/nemo/http/PolicyUtils;->savePolicyState(Z)V

    .line 83
    :cond_c
    iget-object v0, p0, Lcom/codemao/nemo/http/PolicyUtils$2;->val$callBack:Lcom/codemao/nemo/http/LocalNetCallBack;

    if-eqz v0, :cond_13

    .line 84
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/http/LocalNetCallBack;->onSuccess(Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 73
    check-cast p1, Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/http/PolicyUtils$2;->onSuccess(Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;)V

    return-void
.end method
