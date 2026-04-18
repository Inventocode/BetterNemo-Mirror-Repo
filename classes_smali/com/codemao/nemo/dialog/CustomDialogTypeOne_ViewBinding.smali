.class public Lcom/codemao/nemo/dialog/CustomDialogTypeOne_ViewBinding;
.super Ljava/lang/Object;
.source "CustomDialogTypeOne_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Landroid/view/View;)V
    .registers 6

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a080c

    const-string v2, "field \'tvCancel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvCancel:Landroid/widget/TextView;

    .line 32
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0433

    const-string v2, "field \'ivTopCat\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->ivTopCat:Landroid/widget/ImageView;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08fa

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvTitle:Landroid/widget/TextView;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0821

    const-string v2, "field \'tvConfirm\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvConfirm:Landroid/widget/TextView;

    .line 35
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0824

    const-string v2, "field \'tvContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvContent:Landroid/widget/TextView;

    const v0, 0x7f0a0629

    const-string v1, "method \'bodyClick\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 38
    new-instance v0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne_ViewBinding$1;-><init>(Lcom/codemao/nemo/dialog/CustomDialogTypeOne_ViewBinding;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
