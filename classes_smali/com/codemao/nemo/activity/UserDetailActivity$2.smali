.class Lcom/codemao/nemo/activity/UserDetailActivity$2;
.super Ljava/lang/Object;
.source "UserDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserDetailActivity;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$2;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5

    .line 289
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$2;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$2;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$1100(Lcom/codemao/nemo/activity/UserDetailActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Label"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    if-eqz p1, :cond_35

    .line 294
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 295
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$2;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    const-string/jumbo v0, "已复制至剪贴板"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_3d

    .line 297
    :cond_35
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$2;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    const-string/jumbo v0, "复制失败"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_3d
    const/4 p1, 0x1

    return p1
.end method
