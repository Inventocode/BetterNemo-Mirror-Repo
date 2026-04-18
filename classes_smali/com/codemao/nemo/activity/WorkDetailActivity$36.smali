.class Lcom/codemao/nemo/activity/WorkDetailActivity$36;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->setPraise(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

.field final synthetic val$padding:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;I)V
    .registers 3

    .line 1507
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$36;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iput p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$36;->val$padding:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1510
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$36;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$2900(Lcom/codemao/nemo/activity/WorkDetailActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1511
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$36;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$2900(Lcom/codemao/nemo/activity/WorkDetailActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1513
    :cond_11
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$36;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivPraise:Landroid/widget/ImageView;

    iget v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$36;->val$padding:I

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1514
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$36;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivPraise:Landroid/widget/ImageView;

    const v1, 0x7f0e0074

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
