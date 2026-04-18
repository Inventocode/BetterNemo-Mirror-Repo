.class Lcom/codemao/nemo/view/ShareMiaoCodeDialog$1;
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

    .line 81
    iput-object p1, p0, Lcom/codemao/nemo/view/ShareMiaoCodeDialog$1;->this$0:Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 85
    iget-object p1, p0, Lcom/codemao/nemo/view/ShareMiaoCodeDialog$1;->this$0:Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;->access$100(Lcom/codemao/nemo/view/ShareMiaoCodeDialog;)Lcom/codemao/nemo/view/ShareMiaoCodeDialog$ShareMiaoCodeCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/view/ShareMiaoCodeDialog$1;->this$0:Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

    invoke-static {v0}, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;->access$000(Lcom/codemao/nemo/view/ShareMiaoCodeDialog;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/codemao/nemo/view/ShareMiaoCodeDialog$ShareMiaoCodeCallback;->shareByMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method
