.class Lcom/codemao/nemo/dialog/ShareDialog$1;
.super Ljava/lang/Object;
.source "ShareDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/ShareDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/ShareDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/ShareDialog;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog$1;->this$0:Lcom/codemao/nemo/dialog/ShareDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 155
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog$1;->this$0:Lcom/codemao/nemo/dialog/ShareDialog;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/ShareDialog;->access$000(Lcom/codemao/nemo/dialog/ShareDialog;)Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 156
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog$1;->this$0:Lcom/codemao/nemo/dialog/ShareDialog;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/ShareDialog;->access$000(Lcom/codemao/nemo/dialog/ShareDialog;)Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;->onClickDismiss()V

    .line 158
    :cond_11
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog$1;->this$0:Lcom/codemao/nemo/dialog/ShareDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
