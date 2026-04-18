.class Lcom/codemao/nemo/util/UserLevelupHelper$2;
.super Lcom/nemo/commonui/xpopup/interfaces/SimpleCallback;
.source "UserLevelupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/UserLevelupHelper;->showLevelDetail(ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/UserLevelupHelper;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/UserLevelupHelper;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/codemao/nemo/util/UserLevelupHelper$2;->this$0:Lcom/codemao/nemo/util/UserLevelupHelper;

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

    .line 170
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper$2;->this$0:Lcom/codemao/nemo/util/UserLevelupHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/UserLevelupHelper;->access$202(Lcom/codemao/nemo/util/UserLevelupHelper;Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;)Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;

    return-void
.end method
