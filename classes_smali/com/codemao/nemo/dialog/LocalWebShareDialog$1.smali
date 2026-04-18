.class Lcom/codemao/nemo/dialog/LocalWebShareDialog$1;
.super Ljava/lang/Object;
.source "LocalWebShareDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/LocalWebShareDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/LocalWebShareDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/LocalWebShareDialog;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog$1;->this$0:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 116
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog$1;->this$0:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
