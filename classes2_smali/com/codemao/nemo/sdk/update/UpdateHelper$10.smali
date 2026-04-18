.class Lcom/codemao/nemo/sdk/update/UpdateHelper$10;
.super Ljava/lang/Object;
.source "UpdateHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/sdk/update/UpdateHelper;->retryDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/sdk/update/UpdateHelper;)V
    .registers 2

    .line 282
    iput-object p1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$10;->this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 286
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 287
    iget-object p1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$10;->this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;

    invoke-static {p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->access$900(Lcom/codemao/nemo/sdk/update/UpdateHelper;)V

    .line 288
    iget-object p1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$10;->this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;

    invoke-static {p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->access$1100(Lcom/codemao/nemo/sdk/update/UpdateHelper;)Lcn/codemao/android/update/CodemaoUpdate;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$10;->this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;

    invoke-static {v0}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->access$1000(Lcom/codemao/nemo/sdk/update/UpdateHelper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/update/CodemaoUpdate;->download(Landroid/os/Handler;)Lcn/codemao/android/update/CodemaoUpdate;

    :cond_1e
    return-void
.end method
