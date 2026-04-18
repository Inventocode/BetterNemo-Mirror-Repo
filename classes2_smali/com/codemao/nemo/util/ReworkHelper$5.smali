.class Lcom/codemao/nemo/util/ReworkHelper$5;
.super Ljava/lang/Object;
.source "ReworkHelper.java"

# interfaces
.implements Lcom/giu/xzz/utils/HandlerUtil$HandleBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/util/ReworkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/ReworkHelper;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/ReworkHelper;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$5;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 226
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2f

    if-eq p1, v1, :cond_a

    goto/16 :goto_78

    .line 244
    :cond_a
    :try_start_a
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$5;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$400(Lcom/codemao/nemo/util/ReworkHelper;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2e

    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$5;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$400(Lcom/codemao/nemo/util/ReworkHelper;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_2e

    .line 247
    :cond_23
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$5;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$100(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/nemo/view/ReWorkDialog;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/ReWorkDialog;->showByType(I)Lcom/codemao/nemo/view/ReWorkDialog;

    goto :goto_78

    :cond_2e
    :goto_2e
    return-void

    .line 229
    :cond_2f
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$5;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$400(Lcom/codemao/nemo/util/ReworkHelper;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_78

    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$5;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$400(Lcom/codemao/nemo/util/ReworkHelper;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_48

    goto :goto_78

    .line 232
    :cond_48
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$5;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$100(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/nemo/view/ReWorkDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/view/ReWorkDialog;->getType()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_61

    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$5;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$100(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/nemo/view/ReWorkDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/view/ReWorkDialog;->getType()I

    move-result p1

    if-ne p1, v1, :cond_78

    .line 233
    :cond_61
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$5;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$100(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/nemo/view/ReWorkDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 234
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$5;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$000(Lcom/codemao/nemo/util/ReworkHelper;)Z

    move-result p1

    if-nez p1, :cond_78

    .line 235
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$5;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$1600(Lcom/codemao/nemo/util/ReworkHelper;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_77} :catch_78

    nop

    :catch_78
    :cond_78
    :goto_78
    return-void
.end method
