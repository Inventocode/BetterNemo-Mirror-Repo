.class Lcom/codemao/nemo/dialog/CoverEditBottomDialog$1;
.super Ljava/lang/Object;
.source "CoverEditBottomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/CoverEditBottomDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/CoverEditBottomDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/CoverEditBottomDialog;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/codemao/nemo/dialog/CoverEditBottomDialog$1;->this$0:Lcom/codemao/nemo/dialog/CoverEditBottomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 65
    iget-object p1, p0, Lcom/codemao/nemo/dialog/CoverEditBottomDialog$1;->this$0:Lcom/codemao/nemo/dialog/CoverEditBottomDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
