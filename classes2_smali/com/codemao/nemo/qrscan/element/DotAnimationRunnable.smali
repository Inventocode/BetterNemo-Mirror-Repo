.class public final Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;
.super Ljava/lang/Object;
.source "DotAnimationRunnable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final dot:Landroid/view/View;

.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V
    .registers 4

    const-string v0, "dot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "QRCodeActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;->dot:Landroid/view/View;

    .line 14
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 17
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

    if-nez v0, :cond_b

    return-void

    .line 19
    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.codemao.nemo.qrscan.activity.ScanQRCodeActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

    .line 20
    sget-object v0, Lcom/codemao/nemo/qrscan/utils/ScanAnimationHelper;->INSTANCE:Lcom/codemao/nemo/qrscan/utils/ScanAnimationHelper;

    iget-object v1, p0, Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;->dot:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/qrscan/utils/ScanAnimationHelper;->startDotAnimal(Landroid/view/View;)V

    return-void
.end method
