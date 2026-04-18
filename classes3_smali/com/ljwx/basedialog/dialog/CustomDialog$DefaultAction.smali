.class Lcom/ljwx/basedialog/dialog/CustomDialog$DefaultAction;
.super Ljava/lang/Object;
.source "CustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ljwx/basedialog/dialog/CustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultAction"
.end annotation


# instance fields
.field final dialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/ljwx/basedialog/dialog/CustomDialog$DefaultAction;->dialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ljwx/basedialog/R$id;->btn_cancel:I

    if-ne v0, v1, :cond_e

    .line 252
    iget-object p1, p0, Lcom/ljwx/basedialog/dialog/CustomDialog$DefaultAction;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    goto :goto_1b

    .line 253
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/ljwx/basedialog/R$id;->btn_close:I

    if-ne p1, v0, :cond_1b

    .line 254
    iget-object p1, p0, Lcom/ljwx/basedialog/dialog/CustomDialog$DefaultAction;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1b
    :goto_1b
    return-void
.end method
