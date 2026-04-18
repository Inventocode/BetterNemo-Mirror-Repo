.class Lcom/ljwx/basedialog/dialog/CustomDialog$DismissAction;
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
    name = "DismissAction"
.end annotation


# instance fields
.field final dialog:Landroid/app/Dialog;

.field final listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/ljwx/basedialog/dialog/CustomDialog$DismissAction;->dialog:Landroid/app/Dialog;

    .line 265
    iput-object p2, p0, Lcom/ljwx/basedialog/dialog/CustomDialog$DismissAction;->listener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 270
    iget-object v0, p0, Lcom/ljwx/basedialog/dialog/CustomDialog$DismissAction;->listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_d

    .line 271
    iget-object v1, p0, Lcom/ljwx/basedialog/dialog/CustomDialog$DismissAction;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 273
    :cond_d
    iget-object p1, p0, Lcom/ljwx/basedialog/dialog/CustomDialog$DismissAction;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
