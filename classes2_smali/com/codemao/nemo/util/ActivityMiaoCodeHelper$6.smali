.class Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$6;
.super Ljava/lang/Object;
.source "ActivityMiaoCodeHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->showDownloadAppDialog(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V
    .registers 3

    .line 173
    iput-object p2, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$6;->val$downloadDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 177
    iget-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$6;->val$downloadDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
