.class Lcom/codemao/nemo/activity/ShareProductActivity$6;
.super Ljava/lang/Object;
.source "ShareProductActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/ShareProductActivity;->share()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/ShareProductActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/ShareProductActivity;)V
    .registers 2

    .line 439
    iput-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$6;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 442
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$6;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/ShareProductActivity;->ivBg:Landroid/widget/ImageView;

    const v1, 0x7f0e008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
