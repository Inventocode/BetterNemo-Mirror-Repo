.class Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$2;
.super Ljava/lang/Object;
.source "BaseKNWorkPlayActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V
    .registers 2

    .line 267
    iput-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$2;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$2;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    iget-object v1, v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->rlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->screenWitdh:I

    .line 271
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$2;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    iget-object v1, v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->rlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->screenHeight:I

    .line 272
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$2;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    invoke-virtual {v0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->initSize()V

    .line 273
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$2;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    iget-object v0, v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->rlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
