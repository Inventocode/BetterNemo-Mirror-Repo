.class Lcom/codemao/nemo/view/ReWorkDialog$1;
.super Ljava/lang/Object;
.source "ReWorkDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/ReWorkDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/ReWorkDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/ReWorkDialog;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog$1;->this$0:Lcom/codemao/nemo/view/ReWorkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 125
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog$1;->this$0:Lcom/codemao/nemo/view/ReWorkDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 126
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog$1;->this$0:Lcom/codemao/nemo/view/ReWorkDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/ReWorkDialog;->access$000(Lcom/codemao/nemo/view/ReWorkDialog;)Lcom/codemao/nemo/view/ReWorkDialog$ReWorkCallback;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 127
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog$1;->this$0:Lcom/codemao/nemo/view/ReWorkDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/ReWorkDialog;->access$000(Lcom/codemao/nemo/view/ReWorkDialog;)Lcom/codemao/nemo/view/ReWorkDialog$ReWorkCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/view/ReWorkDialog$ReWorkCallback;->close()V

    :cond_16
    return-void
.end method
