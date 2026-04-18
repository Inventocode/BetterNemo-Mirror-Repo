.class Lcom/codemao/nemo/dialog/LaterCheckDialog$1;
.super Ljava/lang/Object;
.source "LaterCheckDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/LaterCheckDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/LaterCheckDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/LaterCheckDialog;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/codemao/nemo/dialog/LaterCheckDialog$1;->this$0:Lcom/codemao/nemo/dialog/LaterCheckDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 58
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LaterCheckDialog$1;->this$0:Lcom/codemao/nemo/dialog/LaterCheckDialog;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/LaterCheckDialog;->access$000(Lcom/codemao/nemo/dialog/LaterCheckDialog;)Lcom/codemao/nemo/dialog/LaterCheckDialog$Callback;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 59
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LaterCheckDialog$1;->this$0:Lcom/codemao/nemo/dialog/LaterCheckDialog;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/LaterCheckDialog;->access$000(Lcom/codemao/nemo/dialog/LaterCheckDialog;)Lcom/codemao/nemo/dialog/LaterCheckDialog$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/dialog/LaterCheckDialog$1;->this$0:Lcom/codemao/nemo/dialog/LaterCheckDialog;

    iget-object v0, v0, Lcom/codemao/nemo/dialog/LaterCheckDialog;->cbNoNotice:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/codemao/nemo/dialog/LaterCheckDialog$Callback;->know(Z)V

    :cond_19
    return-void
.end method
