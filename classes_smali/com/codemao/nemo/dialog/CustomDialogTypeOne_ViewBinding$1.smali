.class Lcom/codemao/nemo/dialog/CustomDialogTypeOne_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "CustomDialogTypeOne_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/CustomDialogTypeOne_ViewBinding;-><init>(Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/CustomDialogTypeOne_ViewBinding;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V
    .registers 3

    .line 38
    iput-object p2, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne_ViewBinding$1;->val$target:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne_ViewBinding$1;->val$target:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->bodyClick(Landroid/view/View;)V

    return-void
.end method
