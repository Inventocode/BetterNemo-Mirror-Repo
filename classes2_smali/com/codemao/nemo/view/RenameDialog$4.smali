.class Lcom/codemao/nemo/view/RenameDialog$4;
.super Ljava/lang/Object;
.source "RenameDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/RenameDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/RenameDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/RenameDialog;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/codemao/nemo/view/RenameDialog$4;->this$0:Lcom/codemao/nemo/view/RenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 165
    iget-object p1, p0, Lcom/codemao/nemo/view/RenameDialog$4;->this$0:Lcom/codemao/nemo/view/RenameDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
