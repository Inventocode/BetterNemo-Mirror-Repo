.class Lcom/codemao/nemo/sdk/update/UpdateHelper$3;
.super Lcn/codemao/android/update/listener/NetResultListener;
.source "UpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/sdk/update/UpdateHelper;->update2()V
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


# direct methods
.method constructor <init>(Lcom/codemao/nemo/sdk/update/UpdateHelper;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$3;->this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;

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

    .line 148
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$3;->this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;

    invoke-virtual {p1}, Lcn/codemao/android/update/vo/UpdateResultVO;->getPkgSize()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->access$202(Lcom/codemao/nemo/sdk/update/UpdateHelper;J)J

    .line 149
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$3;->this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;

    invoke-virtual {p1}, Lcn/codemao/android/update/vo/UpdateResultVO;->isForceUpdate()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->access$302(Lcom/codemao/nemo/sdk/update/UpdateHelper;Z)Z

    .line 150
    iget-object p1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$3;->this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;

    invoke-static {p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->access$500(Lcom/codemao/nemo/sdk/update/UpdateHelper;)V

    .line 151
    iget-object p1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$3;->this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;

    invoke-static {p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->access$600(Lcom/codemao/nemo/sdk/update/UpdateHelper;)Lcom/codemao/nemo/dialog/ReusableDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 152
    iget-object p1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$3;->this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;

    invoke-static {p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->access$700(Lcom/codemao/nemo/sdk/update/UpdateHelper;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->access$800(Lcom/codemao/nemo/sdk/update/UpdateHelper;Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 145
    check-cast p1, Lcn/codemao/android/update/vo/UpdateResultVO;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper$3;->onSuccess(Lcn/codemao/android/update/vo/UpdateResultVO;)V

    return-void
.end method
