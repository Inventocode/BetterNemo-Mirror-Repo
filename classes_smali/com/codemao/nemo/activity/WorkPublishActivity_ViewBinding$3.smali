.class Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "WorkPublishActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/activity/WorkPublishActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding;Lcom/codemao/nemo/activity/WorkPublishActivity;)V
    .registers 3

    .line 70
    iput-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding$3;->val$target:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity_ViewBinding$3;->val$target:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->back(Landroid/view/View;)V

    return-void
.end method
