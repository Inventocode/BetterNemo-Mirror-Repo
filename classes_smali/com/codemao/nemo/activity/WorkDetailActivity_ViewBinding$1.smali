.class Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "WorkDetailActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/activity/WorkDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 3

    .line 62
    iput-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding$1;->val$target:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity_ViewBinding$1;->val$target:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->collectWorkOrCancel(Landroid/view/View;)V

    return-void
.end method
