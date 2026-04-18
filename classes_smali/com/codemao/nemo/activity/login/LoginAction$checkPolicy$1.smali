.class public final Lcom/codemao/nemo/activity/login/LoginAction$checkPolicy$1;
.super Lcom/codemao/nemo/http/LocalNetCallBack;
.source "LoginAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/login/LoginAction;->checkPolicy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBack<",
        "Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/login/LoginAction;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/login/LoginAction;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/LoginAction$checkPolicy$1;->this$0:Lcom/codemao/nemo/activity/login/LoginAction;

    .line 189
    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "msg"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo v0, "检查协议失败"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/LoginAction$checkPolicy$1;->this$0:Lcom/codemao/nemo/activity/login/LoginAction;

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelay(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 199
    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->logout(Z)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;)V
    .registers 4

    .line 191
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo v1, "检查协议成功"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->closeVisitorModel()V

    .line 193
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/LoginAction$checkPolicy$1;->this$0:Lcom/codemao/nemo/activity/login/LoginAction;

    if-eqz p1, :cond_14

    iget-boolean p1, p1, Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;->agreed_enable:Z

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/login/LoginAction;->access$checkOldPassword(Lcom/codemao/nemo/activity/login/LoginAction;Z)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 189
    check-cast p1, Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/LoginAction$checkPolicy$1;->onSuc(Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;)V

    return-void
.end method
