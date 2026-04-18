.class final Lcom/lxj/xpopup/util/XPopupUtils$3;
.super Ljava/lang/Object;
.source "XPopupUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/util/XPopupUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$text",
            "val$context"
        }
    .end annotation

    .line 476
    iput-object p1, p0, Lcom/lxj/xpopup/util/XPopupUtils$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lxj/xpopup/util/XPopupUtils$3;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 479
    iget-object v0, p0, Lcom/lxj/xpopup/util/XPopupUtils$3;->val$context:Landroid/content/Context;

    if-eqz v0, :cond_e

    .line 480
    iget-object v1, p0, Lcom/lxj/xpopup/util/XPopupUtils$3;->val$text:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_e
    return-void
.end method
