.class Lcom/codemao/nemo/retrofit/response/CommonSubcriber$2;
.super Ljava/lang/Object;
.source "CommonSubcriber.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/retrofit/response/CommonSubcriber;->showUpdateDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/retrofit/response/CommonSubcriber;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V
    .registers 3

    .line 111
    iput-object p2, p0, Lcom/codemao/nemo/retrofit/response/CommonSubcriber$2;->val$downloadDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 115
    iget-object p1, p0, Lcom/codemao/nemo/retrofit/response/CommonSubcriber$2;->val$downloadDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
