.class Lcom/codemao/nemo/dialog/LocalWebShareDialog_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "LocalWebShareDialog_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/LocalWebShareDialog_ViewBinding;-><init>(Lcom/codemao/nemo/dialog/LocalWebShareDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/dialog/LocalWebShareDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/LocalWebShareDialog_ViewBinding;Lcom/codemao/nemo/dialog/LocalWebShareDialog;)V
    .registers 3

    .line 48
    iput-object p2, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog_ViewBinding$2;->val$target:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog_ViewBinding$2;->val$target:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->onShare(Landroid/view/View;)V

    return-void
.end method
