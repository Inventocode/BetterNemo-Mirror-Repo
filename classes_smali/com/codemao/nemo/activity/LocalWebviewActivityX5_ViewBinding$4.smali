.class Lcom/codemao/nemo/activity/LocalWebviewActivityX5_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "LocalWebviewActivityX5_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LocalWebviewActivityX5_ViewBinding;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LocalWebviewActivityX5_ViewBinding;Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)V
    .registers 3

    .line 72
    iput-object p2, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5_ViewBinding$4;->val$target:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5_ViewBinding$4;->val$target:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->share(Landroid/view/View;)V

    return-void
.end method
