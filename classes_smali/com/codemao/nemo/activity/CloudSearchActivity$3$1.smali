.class Lcom/codemao/nemo/activity/CloudSearchActivity$3$1;
.super Ljava/lang/Object;
.source "CloudSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CloudSearchActivity$3;->onSuccess(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/activity/CloudSearchActivity$3;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CloudSearchActivity$3;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3$1;->this$1:Lcom/codemao/nemo/activity/CloudSearchActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3$1;->this$1:Lcom/codemao/nemo/activity/CloudSearchActivity$3;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3$1;->this$1:Lcom/codemao/nemo/activity/CloudSearchActivity$3;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 171
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3$1;->this$1:Lcom/codemao/nemo/activity/CloudSearchActivity$3;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CloudSearchActivity;->access$400(Lcom/codemao/nemo/activity/CloudSearchActivity;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1f
    return-void
.end method
