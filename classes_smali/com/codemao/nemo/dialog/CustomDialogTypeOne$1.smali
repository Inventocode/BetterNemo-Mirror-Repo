.class Lcom/codemao/nemo/dialog/CustomDialogTypeOne$1;
.super Ljava/lang/Object;
.source "CustomDialogTypeOne.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne$1;->this$0:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 250
    iget-object p1, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne$1;->this$0:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
