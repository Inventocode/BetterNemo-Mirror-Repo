.class Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$3;
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

    .line 164
    iput-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$3;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 168
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$3;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->access$200(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeErrorCallback;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 169
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$3;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->access$200(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeErrorCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeErrorCallback;->tryAgain()V

    :cond_11
    return-void
.end method
