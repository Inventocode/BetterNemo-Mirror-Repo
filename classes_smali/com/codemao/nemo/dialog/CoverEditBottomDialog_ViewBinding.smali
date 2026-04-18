.class public Lcom/codemao/nemo/dialog/CoverEditBottomDialog_ViewBinding;
.super Ljava/lang/Object;
.source "CoverEditBottomDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/dialog/CoverEditBottomDialog;Landroid/view/View;)V
    .registers 6

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a080c

    const-string v2, "field \'tvCancel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/CoverEditBottomDialog;->tvCancel:Landroid/widget/TextView;

    const v0, 0x7f0a083e

    const-string v1, "method \'toEditDefault\'"

    .line 33
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/codemao/nemo/dialog/CoverEditBottomDialog_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/dialog/CoverEditBottomDialog_ViewBinding$1;-><init>(Lcom/codemao/nemo/dialog/CoverEditBottomDialog_ViewBinding;Lcom/codemao/nemo/dialog/CoverEditBottomDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0840

    const-string v1, "method \'choosePhoto\'"

    .line 41
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 43
    new-instance v0, Lcom/codemao/nemo/dialog/CoverEditBottomDialog_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/CoverEditBottomDialog_ViewBinding$2;-><init>(Lcom/codemao/nemo/dialog/CoverEditBottomDialog_ViewBinding;Lcom/codemao/nemo/dialog/CoverEditBottomDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
