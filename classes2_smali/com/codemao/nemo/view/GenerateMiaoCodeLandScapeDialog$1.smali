.class Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$1;
.super Ljava/lang/Object;
.source "GenerateMiaoCodeLandScapeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$1;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 81
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$1;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 82
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$1;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->access$000(Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;)Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$CloseCallback;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 83
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$1;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->access$000(Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;)Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$CloseCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$CloseCallback;->close()V

    :cond_16
    return-void
.end method
