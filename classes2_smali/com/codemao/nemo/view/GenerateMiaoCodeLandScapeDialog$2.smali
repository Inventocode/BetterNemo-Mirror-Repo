.class Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$2;
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

    .line 89
    iput-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$2;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 93
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$2;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->access$100(Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;)Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$NotSupportCallback;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 94
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$2;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->access$100(Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;)Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$NotSupportCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$NotSupportCallback;->showLater()V

    :cond_11
    return-void
.end method
