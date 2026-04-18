.class Lcom/codemao/nemo/dialog/WorkInfoDialog$4;
.super Ljava/lang/Object;
.source "WorkInfoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/WorkInfoDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/WorkInfoDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/WorkInfoDialog;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog$4;->this$0:Lcom/codemao/nemo/dialog/WorkInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 177
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog$4;->this$0:Lcom/codemao/nemo/dialog/WorkInfoDialog;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/WorkInfoDialog;->access$100(Lcom/codemao/nemo/dialog/WorkInfoDialog;)Lcom/codemao/nemo/dialog/WorkInfoDialog$UpdateInfoListener;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 178
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog$4;->this$0:Lcom/codemao/nemo/dialog/WorkInfoDialog;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/WorkInfoDialog;->access$100(Lcom/codemao/nemo/dialog/WorkInfoDialog;)Lcom/codemao/nemo/dialog/WorkInfoDialog$UpdateInfoListener;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog$4;->this$0:Lcom/codemao/nemo/dialog/WorkInfoDialog;

    iget-object v0, v0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etName:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog$4;->this$0:Lcom/codemao/nemo/dialog/WorkInfoDialog;

    iget-object v1, v1, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etDes:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/codemao/nemo/dialog/WorkInfoDialog$UpdateInfoListener;->updateInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 180
    :cond_2a
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog$4;->this$0:Lcom/codemao/nemo/dialog/WorkInfoDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_2f
    return-void
.end method
