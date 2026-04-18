.class public Lcom/codemao/nemo/dialog/CreateCustomDialogTwo_ViewBinding;
.super Ljava/lang/Object;
.source "CreateCustomDialogTwo_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/dialog/CreateCustomDialogTwo;Landroid/view/View;)V
    .registers 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class p1, Landroid/widget/TextView;

    const v0, 0x7f0a080c

    const-string v1, "field \'tvCancel\'"

    invoke-static {p2, v0, v1, p1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p1, 0x0

    throw p1
.end method
