.class Lcom/codemao/nemo/activity/BaseWorkPlayActivity$1;
.super Ljava/lang/Object;
.source "BaseWorkPlayActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    iget-object v1, v0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenWitdh:I

    .line 218
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    iget-object v1, v0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenHeight:I

    .line 219
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    invoke-virtual {v0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->initSize()V

    .line 220
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
