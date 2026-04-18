.class Lcom/codemao/nemo/view/RenameDialog$1;
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

    .line 124
    iput-object p1, p0, Lcom/codemao/nemo/view/RenameDialog$1;->this$0:Lcom/codemao/nemo/view/RenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 128
    iget-object p1, p0, Lcom/codemao/nemo/view/RenameDialog$1;->this$0:Lcom/codemao/nemo/view/RenameDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/RenameDialog;->access$100(Lcom/codemao/nemo/view/RenameDialog;)Lcom/codemao/nemo/view/RenameDialog$RenameConfirmCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/view/RenameDialog$1;->this$0:Lcom/codemao/nemo/view/RenameDialog;

    iget-object v0, v0, Lcom/codemao/nemo/view/RenameDialog;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFilterWorkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/view/RenameDialog$1;->this$0:Lcom/codemao/nemo/view/RenameDialog;

    invoke-static {v1}, Lcom/codemao/nemo/view/RenameDialog;->access$000(Lcom/codemao/nemo/view/RenameDialog;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/codemao/nemo/view/RenameDialog$RenameConfirmCallback;->rename(Ljava/lang/String;I)V

    return-void
.end method
