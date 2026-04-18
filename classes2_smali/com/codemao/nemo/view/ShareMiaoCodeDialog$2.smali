.class Lcom/codemao/nemo/view/ShareMiaoCodeDialog$2;
.super Ljava/lang/Object;
.source "ShareMiaoCodeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/ShareMiaoCodeDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/ShareMiaoCodeDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/ShareMiaoCodeDialog;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/codemao/nemo/view/ShareMiaoCodeDialog$2;->this$0:Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 94
    iget-object p1, p0, Lcom/codemao/nemo/view/ShareMiaoCodeDialog$2;->this$0:Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
