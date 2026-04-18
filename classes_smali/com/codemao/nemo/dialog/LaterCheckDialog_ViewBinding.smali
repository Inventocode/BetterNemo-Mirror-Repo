.class public Lcom/codemao/nemo/dialog/LaterCheckDialog_ViewBinding;
.super Ljava/lang/Object;
.source "LaterCheckDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/dialog/LaterCheckDialog;Landroid/view/View;)V
    .registers 6

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a086f

    const-string v2, "field \'tvKnow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/LaterCheckDialog;->tvKnow:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a0107

    const-string v2, "field \'cbNoNotice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p1, Lcom/codemao/nemo/dialog/LaterCheckDialog;->cbNoNotice:Landroid/widget/CheckBox;

    return-void
.end method
