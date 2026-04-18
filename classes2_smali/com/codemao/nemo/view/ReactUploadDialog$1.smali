.class Lcom/codemao/nemo/view/ReactUploadDialog$1;
.super Ljava/lang/Object;
.source "ReactUploadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/ReactUploadDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/ReactUploadDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/ReactUploadDialog;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/codemao/nemo/view/ReactUploadDialog$1;->this$0:Lcom/codemao/nemo/view/ReactUploadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 100
    iget-object p1, p0, Lcom/codemao/nemo/view/ReactUploadDialog$1;->this$0:Lcom/codemao/nemo/view/ReactUploadDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 101
    iget-object p1, p0, Lcom/codemao/nemo/view/ReactUploadDialog$1;->this$0:Lcom/codemao/nemo/view/ReactUploadDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/ReactUploadDialog;->access$000(Lcom/codemao/nemo/view/ReactUploadDialog;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/codemao/nemo/util/CallUtil;->cancelUploadById(Ljava/lang/String;)V

    return-void
.end method
