.class Lcom/codemao/nemo/dialog/ShareCardDialogV3$8;
.super Ljava/lang/Object;
.source "ShareCardDialogV3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/ShareCardDialogV3;->doShowShareAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/ShareCardDialogV3;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3;)V
    .registers 2

    .line 721
    iput-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$8;->this$0:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 724
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$8;->this$0:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    iget-object v0, v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->ivClose:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method
