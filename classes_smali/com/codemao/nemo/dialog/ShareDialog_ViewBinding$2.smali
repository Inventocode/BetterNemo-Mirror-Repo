.class Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ShareDialog_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding;-><init>(Lcom/codemao/nemo/dialog/ShareDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/dialog/ShareDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding;Lcom/codemao/nemo/dialog/ShareDialog;)V
    .registers 3

    .line 52
    iput-object p2, p0, Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding$2;->val$target:Lcom/codemao/nemo/dialog/ShareDialog;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding$2;->val$target:Lcom/codemao/nemo/dialog/ShareDialog;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/dialog/ShareDialog;->onShare(Landroid/view/View;)V

    return-void
.end method
