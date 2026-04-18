.class Lcom/codemao/nemo/http/PolicyUtils$4;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "PolicyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/http/PolicyUtils;->setPolicy(Lcom/codemao/nemo/http/LocalNetCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/codemao/nemo/http/LocalNetCallBack;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/http/LocalNetCallBack;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/codemao/nemo/http/PolicyUtils$4;->val$callBack:Lcom/codemao/nemo/http/LocalNetCallBack;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 156
    sput-boolean v0, Lcom/codemao/nemo/http/PolicyUtils;->isTouristAgreePolicy:Z

    .line 157
    invoke-static {v0}, Lcom/codemao/nemo/http/PolicyUtils;->savePolicyState(Z)V

    .line 158
    iget-object v0, p0, Lcom/codemao/nemo/http/PolicyUtils$4;->val$callBack:Lcom/codemao/nemo/http/LocalNetCallBack;

    if-eqz v0, :cond_d

    .line 159
    invoke-virtual {v0, p1, p2}, Lcom/codemao/nemo/http/LocalNetCallBack;->onErr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 164
    iget-object v0, p0, Lcom/codemao/nemo/http/PolicyUtils$4;->val$callBack:Lcom/codemao/nemo/http/LocalNetCallBack;

    if-eqz v0, :cond_7

    .line 165
    invoke-virtual {v0, p1, p2}, Lcom/codemao/nemo/http/LocalNetCallBack;->onErr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/codemao/nemo/http/PolicyUtils$4;->val$callBack:Lcom/codemao/nemo/http/LocalNetCallBack;

    if-eqz v0, :cond_7

    .line 150
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/http/LocalNetCallBack;->onSuccess(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method
