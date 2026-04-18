.class Lcom/codemao/nemo/activity/LocalWebviewActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "LocalWebviewActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LocalWebviewActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/activity/LocalWebviewActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LocalWebviewActivity_ViewBinding;Lcom/codemao/nemo/activity/LocalWebviewActivity;)V
    .registers 3

    .line 55
    iput-object p2, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity_ViewBinding$2;->val$target:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity_ViewBinding$2;->val$target:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->next(Landroid/view/View;)V

    return-void
.end method
