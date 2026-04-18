.class Lcom/codemao/nemo/sdk/update/UpdateHelper$4;
.super Ljava/lang/Object;
.source "UpdateHelper.java"

# interfaces
.implements Lcom/giu/xzz/utils/HandlerUtil$HandleBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/sdk/update/UpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/nemo/sdk/update/UpdateHelper;)V
    .registers 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_10

    .line 166
    invoke-static {}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->get()Lcom/codemao/nemo/sdk/update/UpdateHelper;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->setProgress(I)V

    goto :goto_2f

    :cond_10
    if-ne v0, v1, :cond_28

    .line 168
    invoke-static {}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->get()Lcom/codemao/nemo/sdk/update/UpdateHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->setProgress(I)V

    .line 169
    invoke-static {}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->get()Lcom/codemao/nemo/sdk/update/UpdateHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->dismiss()V

    .line 170
    invoke-static {}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->get()Lcom/codemao/nemo/sdk/update/UpdateHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->install()V

    goto :goto_2f

    .line 172
    :cond_28
    invoke-static {}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->get()Lcom/codemao/nemo/sdk/update/UpdateHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->retryDialog()V

    :goto_2f
    return-void
.end method
