.class Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "WorkPlayShareDialog_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding;-><init>(Lcom/codemao/nemo/dialog/WorkPlayShareDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding;Lcom/codemao/nemo/dialog/WorkPlayShareDialog;)V
    .registers 3

    .line 46
    iput-object p2, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding$1;->val$target:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding$1;->val$target:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->onShare(Landroid/view/View;)V

    return-void
.end method
