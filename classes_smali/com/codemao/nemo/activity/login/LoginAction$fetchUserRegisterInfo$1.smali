.class public final Lcom/codemao/nemo/activity/login/LoginAction$fetchUserRegisterInfo$1;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "LoginAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/login/LoginAction;->fetchUserRegisterInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Lcom/codemao/nemo/bean/UserRegisterInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/login/LoginAction;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/login/LoginAction;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/LoginAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/LoginAction;

    .line 213
    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "msg"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/LoginAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/LoginAction;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/activity/login/LoginAction;->access$setData(Lcom/codemao/nemo/activity/login/LoginAction;J)V

    .line 226
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/LoginAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/LoginAction;

    invoke-static {p1}, Lcom/codemao/nemo/activity/login/LoginAction;->access$checkPolicy(Lcom/codemao/nemo/activity/login/LoginAction;)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "msg"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, ""

    .line 230
    invoke-virtual {p0, p1, p1}, Lcom/codemao/nemo/activity/login/LoginAction$fetchUserRegisterInfo$1;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/bean/UserRegisterInfo;)V
    .registers 7

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_20

    .line 215
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserRegisterInfo;->getRegisterTime()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_d

    goto :goto_20

    .line 220
    :cond_d
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/LoginAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/LoginAction;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserRegisterInfo;->getRegisterTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/activity/login/LoginAction;->access$setData(Lcom/codemao/nemo/activity/login/LoginAction;J)V

    .line 221
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/LoginAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/LoginAction;

    invoke-static {p1}, Lcom/codemao/nemo/activity/login/LoginAction;->access$checkPolicy(Lcom/codemao/nemo/activity/login/LoginAction;)V

    return-void

    .line 216
    :cond_20
    :goto_20
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/LoginAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/LoginAction;

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/activity/login/LoginAction;->access$setData(Lcom/codemao/nemo/activity/login/LoginAction;J)V

    .line 217
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/LoginAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/LoginAction;

    invoke-static {p1}, Lcom/codemao/nemo/activity/login/LoginAction;->access$checkPolicy(Lcom/codemao/nemo/activity/login/LoginAction;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 213
    check-cast p1, Lcom/codemao/nemo/bean/UserRegisterInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/LoginAction$fetchUserRegisterInfo$1;->onSuccess(Lcom/codemao/nemo/bean/UserRegisterInfo;)V

    return-void
.end method
