.class Lcom/codemao/nemo/activity/LatestWorkDetailListActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "LatestWorkDetailListActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LatestWorkDetailListActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/LatestWorkDetailListActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/activity/LatestWorkDetailListActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LatestWorkDetailListActivity_ViewBinding;Lcom/codemao/nemo/activity/LatestWorkDetailListActivity;)V
    .registers 3

    .line 34
    iput-object p2, p0, Lcom/codemao/nemo/activity/LatestWorkDetailListActivity_ViewBinding$1;->val$target:Lcom/codemao/nemo/activity/LatestWorkDetailListActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/codemao/nemo/activity/LatestWorkDetailListActivity_ViewBinding$1;->val$target:Lcom/codemao/nemo/activity/LatestWorkDetailListActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/activity/LatestWorkDetailListActivity;->back(Landroid/view/View;)V

    return-void
.end method
