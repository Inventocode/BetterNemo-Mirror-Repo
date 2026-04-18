.class Lcom/codemao/nemo/util/MiaoCodeHelper$5;
.super Ljava/lang/Object;
.source "MiaoCodeHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/MiaoCodeHelper;->showDownloadAppDialog(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/MiaoCodeHelper;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V
    .registers 3

    .line 153
    iput-object p2, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$5;->val$downloadDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 157
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$5;->val$downloadDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
