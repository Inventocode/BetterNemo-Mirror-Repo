.class Lcom/codemao/nemo/dialog/WorkInfoDialog$3;
.super Ljava/lang/Object;
.source "WorkInfoDialog.java"

# interfaces
.implements Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;


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

    .line 148
    iput-object p1, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog$3;->this$0:Lcom/codemao/nemo/dialog/WorkInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;IIID)V
    .registers 7

    .line 156
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog$3;->this$0:Lcom/codemao/nemo/dialog/WorkInfoDialog;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/WorkInfoDialog;->access$000(Lcom/codemao/nemo/dialog/WorkInfoDialog;)V

    return-void
.end method
