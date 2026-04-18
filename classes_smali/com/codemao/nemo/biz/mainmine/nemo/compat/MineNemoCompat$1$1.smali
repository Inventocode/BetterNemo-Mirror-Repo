.class Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1$1;
.super Ljava/lang/Object;
.source "MineNemoCompat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->onSuc(Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;

.field final synthetic val$customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V
    .registers 3

    .line 69
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1$1;->this$1:Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1$1;->val$customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 73
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1$1;->val$customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 74
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1$1;->this$1:Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;

    iget-object v0, p1, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;

    iget-object p1, p1, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {v0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->access$100(Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method
