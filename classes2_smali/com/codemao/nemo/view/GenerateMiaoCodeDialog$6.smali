.class Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$6;
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

    .line 192
    iput-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$6;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 196
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$6;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->access$300(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$ShowMiaoCodeCallback;

    move-result-object p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$6;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->access$400(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 197
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$6;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->access$300(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$ShowMiaoCodeCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$6;->this$0:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-static {v0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->access$400(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$ShowMiaoCodeCallback;->openKn(Ljava/lang/String;)V

    :cond_1f
    return-void
.end method
