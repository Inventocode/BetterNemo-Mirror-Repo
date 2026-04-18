.class Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$1;
.super Ljava/lang/Object;
.source "GenerateMiaoCodeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$1;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 147
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$1;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 148
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$1;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->access$000(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$CloseCallback;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 149
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$1;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->access$000(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$CloseCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$CloseCallback;->close()V

    :cond_16
    return-void
.end method
