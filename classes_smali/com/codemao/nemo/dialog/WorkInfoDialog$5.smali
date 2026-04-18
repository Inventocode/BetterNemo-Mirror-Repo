.class Lcom/codemao/nemo/dialog/WorkInfoDialog$5;
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

    .line 184
    iput-object p1, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog$5;->this$0:Lcom/codemao/nemo/dialog/WorkInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 188
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog$5;->this$0:Lcom/codemao/nemo/dialog/WorkInfoDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
