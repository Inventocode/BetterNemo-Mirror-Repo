.class Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$6;
.super Ljava/lang/Object;
.source "UserCollectWorkSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->setListData(Lcom/codemao/nemo/bean/UserCollectWorks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;)V
    .registers 2

    .line 276
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$6;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$6;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$6;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 280
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$6;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_17
    return-void
.end method
