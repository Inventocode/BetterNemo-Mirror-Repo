.class Lcom/codemao/nemo/dialog/ReusableDialog$2;
.super Ljava/lang/Object;
.source "ReusableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/ReusableDialog;-><init>(Lcom/codemao/nemo/dialog/ReusableDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/ReusableDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/ReusableDialog;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/codemao/nemo/dialog/ReusableDialog$2;->this$0:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 59
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ReusableDialog$2;->this$0:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/ReusableDialog;->access$600(Lcom/codemao/nemo/dialog/ReusableDialog;)Lcom/codemao/nemo/dialog/ReusableDialog$CallBack;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 60
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ReusableDialog$2;->this$0:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/ReusableDialog;->access$600(Lcom/codemao/nemo/dialog/ReusableDialog;)Lcom/codemao/nemo/dialog/ReusableDialog$CallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/dialog/ReusableDialog$2;->this$0:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/ReusableDialog;->access$700(Lcom/codemao/nemo/dialog/ReusableDialog;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/codemao/nemo/dialog/ReusableDialog$CallBack;->onClickNo(Landroid/view/View;)V

    :cond_17
    return-void
.end method
