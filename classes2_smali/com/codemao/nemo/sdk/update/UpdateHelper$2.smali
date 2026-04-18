.class Lcom/codemao/nemo/sdk/update/UpdateHelper$2;
.super Lcn/codemao/android/update/listener/NetResultListener;
.source "UpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/sdk/update/UpdateHelper;->update(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/codemao/android/update/listener/NetResultListener<",
        "Lcn/codemao/android/update/vo/UpdateResultVO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/sdk/update/UpdateHelper;Landroid/os/Handler;)V
    .registers 3

    .line 120
    iput-object p1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$2;->this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;

    iput-object p2, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcn/codemao/android/update/listener/NetResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 2

    return-void
.end method

.method public onSuccess(Lcn/codemao/android/update/vo/UpdateResultVO;)V
    .registers 5

    .line 123
    invoke-virtual {p1}, Lcn/codemao/android/update/vo/UpdateResultVO;->getVersionCode()I

    move-result v0

    const/16 v1, 0xcf

    if-le v0, v1, :cond_25

    .line 124
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$2;->this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;

    invoke-virtual {p1}, Lcn/codemao/android/update/vo/UpdateResultVO;->getPkgSize()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->access$202(Lcom/codemao/nemo/sdk/update/UpdateHelper;J)J

    .line 125
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$2;->this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;

    invoke-virtual {p1}, Lcn/codemao/android/update/vo/UpdateResultVO;->isForceUpdate()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->access$302(Lcom/codemao/nemo/sdk/update/UpdateHelper;Z)Z

    .line 126
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$2;->this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;

    iget-object v1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$2;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->access$400(Lcom/codemao/nemo/sdk/update/UpdateHelper;Landroid/os/Handler;Lcn/codemao/android/update/vo/UpdateResultVO;)V

    :cond_25
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 120
    check-cast p1, Lcn/codemao/android/update/vo/UpdateResultVO;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper$2;->onSuccess(Lcn/codemao/android/update/vo/UpdateResultVO;)V

    return-void
.end method
