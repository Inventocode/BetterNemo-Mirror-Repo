.class Lcom/codemao/nemo/util/UserLevelupHelper$1;
.super Lcom/nemo/commonui/xpopup/interfaces/SimpleCallback;
.source "UserLevelupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/UserLevelupHelper;->showLevelUp(Landroid/content/Context;IIIZZLcom/codemao/nemo/util/UserLevelupHelper$OnDissmissListener;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/UserLevelupHelper;

.field final synthetic val$onDissmissListener:Lcom/codemao/nemo/util/UserLevelupHelper$OnDissmissListener;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/UserLevelupHelper;Lcom/codemao/nemo/util/UserLevelupHelper$OnDissmissListener;)V
    .registers 3

    .line 138
    iput-object p1, p0, Lcom/codemao/nemo/util/UserLevelupHelper$1;->this$0:Lcom/codemao/nemo/util/UserLevelupHelper;

    iput-object p2, p0, Lcom/codemao/nemo/util/UserLevelupHelper$1;->val$onDissmissListener:Lcom/codemao/nemo/util/UserLevelupHelper$OnDissmissListener;

    invoke-direct {p0}, Lcom/nemo/commonui/xpopup/interfaces/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onDismiss()V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper$1;->val$onDissmissListener:Lcom/codemao/nemo/util/UserLevelupHelper$OnDissmissListener;

    if-eqz v0, :cond_7

    .line 142
    invoke-interface {v0}, Lcom/codemao/nemo/util/UserLevelupHelper$OnDissmissListener;->onDismiss()V

    .line 144
    :cond_7
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper$1;->this$0:Lcom/codemao/nemo/util/UserLevelupHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/UserLevelupHelper;->access$102(Lcom/codemao/nemo/util/UserLevelupHelper;Lcom/codemao/nemo/dialog/pop/UserLevelupPop;)Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    return-void
.end method
