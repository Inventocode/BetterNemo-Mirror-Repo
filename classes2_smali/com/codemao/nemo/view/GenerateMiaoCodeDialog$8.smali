.class Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$8;
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

    .line 211
    iput-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$8;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 215
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$8;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->access$300(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$ShowMiaoCodeCallback;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 216
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$8;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->access$300(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$ShowMiaoCodeCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$ShowMiaoCodeCallback;->dismiss()V

    :cond_11
    return-void
.end method
