.class Lcom/codemao/nemo/dialog/CoverEditBottomDialog_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "CoverEditBottomDialog_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/CoverEditBottomDialog_ViewBinding;-><init>(Lcom/codemao/nemo/dialog/CoverEditBottomDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/dialog/CoverEditBottomDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/CoverEditBottomDialog_ViewBinding;Lcom/codemao/nemo/dialog/CoverEditBottomDialog;)V
    .registers 3

    .line 43
    iput-object p2, p0, Lcom/codemao/nemo/dialog/CoverEditBottomDialog_ViewBinding$2;->val$target:Lcom/codemao/nemo/dialog/CoverEditBottomDialog;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CoverEditBottomDialog_ViewBinding$2;->val$target:Lcom/codemao/nemo/dialog/CoverEditBottomDialog;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/dialog/CoverEditBottomDialog;->choosePhoto(Landroid/view/View;)V

    return-void
.end method
