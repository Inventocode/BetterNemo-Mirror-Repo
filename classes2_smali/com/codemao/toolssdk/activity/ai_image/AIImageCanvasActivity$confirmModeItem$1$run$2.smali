.class public final Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1$run$2;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "AIImageCanvasActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1$run$2;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1$run$2;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 550
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1$run$2;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;->setMaskBitmap(Landroid/graphics/Bitmap;)V

    .line 556
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1$run$2;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3

    .line 550
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1$run$2;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
