.class public final Lcom/codemao/nemo/activity/login/RegisterAction$fetchUserRegisterInfo$1;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "RegisterAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/login/RegisterAction;->fetchUserRegisterInfo(Z)V
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
.field final synthetic $isFirstLogin:Z

.field final synthetic this$0:Lcom/codemao/nemo/activity/login/RegisterAction;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/login/RegisterAction;Z)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/RegisterAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/RegisterAction;

    iput-boolean p2, p0, Lcom/codemao/nemo/activity/login/RegisterAction$fetchUserRegisterInfo$1;->$isFirstLogin:Z

    .line 197
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

    .line 211
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/RegisterAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/RegisterAction;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/activity/login/RegisterAction;->access$setData(Lcom/codemao/nemo/activity/login/RegisterAction;J)V

    .line 212
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/event/LoginEvent;

    invoke-direct {p2}, Lcom/codemao/nemo/event/LoginEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 213
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/RegisterAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/RegisterAction;

    iget-boolean p2, p0, Lcom/codemao/nemo/activity/login/RegisterAction$fetchUserRegisterInfo$1;->$isFirstLogin:Z

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/login/RegisterAction;->access$toMain(Lcom/codemao/nemo/activity/login/RegisterAction;Z)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "msg"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, ""

    .line 217
    invoke-virtual {p0, p1, p1}, Lcom/codemao/nemo/activity/login/RegisterAction$fetchUserRegisterInfo$1;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/bean/UserRegisterInfo;)V
    .registers 7

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2e

    .line 199
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserRegisterInfo;->getRegisterTime()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_d

    goto :goto_2e

    .line 205
    :cond_d
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/RegisterAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/RegisterAction;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserRegisterInfo;->getRegisterTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/activity/login/RegisterAction;->access$setData(Lcom/codemao/nemo/activity/login/RegisterAction;J)V

    .line 206
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/LoginEvent;

    invoke-direct {v0}, Lcom/codemao/nemo/event/LoginEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 207
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/RegisterAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/RegisterAction;

    iget-boolean v0, p0, Lcom/codemao/nemo/activity/login/RegisterAction$fetchUserRegisterInfo$1;->$isFirstLogin:Z

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/login/RegisterAction;->access$toMain(Lcom/codemao/nemo/activity/login/RegisterAction;Z)V

    return-void

    .line 200
    :cond_2e
    :goto_2e
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/RegisterAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/RegisterAction;

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/activity/login/RegisterAction;->access$setData(Lcom/codemao/nemo/activity/login/RegisterAction;J)V

    .line 201
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/LoginEvent;

    invoke-direct {v0}, Lcom/codemao/nemo/event/LoginEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 202
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/RegisterAction$fetchUserRegisterInfo$1;->this$0:Lcom/codemao/nemo/activity/login/RegisterAction;

    iget-boolean v0, p0, Lcom/codemao/nemo/activity/login/RegisterAction$fetchUserRegisterInfo$1;->$isFirstLogin:Z

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/login/RegisterAction;->access$toMain(Lcom/codemao/nemo/activity/login/RegisterAction;Z)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 197
    check-cast p1, Lcom/codemao/nemo/bean/UserRegisterInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/RegisterAction$fetchUserRegisterInfo$1;->onSuccess(Lcom/codemao/nemo/bean/UserRegisterInfo;)V

    return-void
.end method
