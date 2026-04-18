.class Lcom/codemao/nemo/view/RenameDialog$3;
.super Ljava/lang/Object;
.source "RenameDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 145
    iput-object p1, p0, Lcom/codemao/nemo/view/RenameDialog$3;->this$0:Lcom/codemao/nemo/view/RenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 152
    iget-object p1, p0, Lcom/codemao/nemo/view/RenameDialog$3;->this$0:Lcom/codemao/nemo/view/RenameDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/RenameDialog;->access$200(Lcom/codemao/nemo/view/RenameDialog;)V

    return-void
.end method
