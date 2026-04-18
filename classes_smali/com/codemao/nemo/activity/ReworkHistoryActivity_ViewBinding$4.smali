.class Lcom/codemao/nemo/activity/ReworkHistoryActivity_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ReworkHistoryActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/ReworkHistoryActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/ReworkHistoryActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/activity/ReworkHistoryActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/ReworkHistoryActivity_ViewBinding;Lcom/codemao/nemo/activity/ReworkHistoryActivity;)V
    .registers 3

    .line 75
    iput-object p2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity_ViewBinding$4;->val$target:Lcom/codemao/nemo/activity/ReworkHistoryActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity_ViewBinding$4;->val$target:Lcom/codemao/nemo/activity/ReworkHistoryActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->onClickClose(Landroid/view/View;)V

    return-void
.end method
