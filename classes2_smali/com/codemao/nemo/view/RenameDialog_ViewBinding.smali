.class public Lcom/codemao/nemo/view/RenameDialog_ViewBinding;
.super Ljava/lang/Object;
.source "RenameDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/view/RenameDialog;Landroid/view/View;)V
    .registers 6

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a020a

    const-string v2, "field \'etInput\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/codemao/nemo/view/RenameDialog;->etInput:Landroid/widget/EditText;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0821

    const-string v2, "field \'tvConfirm\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/view/RenameDialog;->tvConfirm:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a037b

    const-string v2, "field \'ivClose\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/codemao/nemo/view/RenameDialog;->ivClose:Landroid/widget/ImageView;

    return-void
.end method
