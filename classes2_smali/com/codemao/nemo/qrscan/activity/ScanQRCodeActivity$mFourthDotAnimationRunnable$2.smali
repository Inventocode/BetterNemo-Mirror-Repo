.class final Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$mFourthDotAnimationRunnable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ScanQRCodeActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$mFourthDotAnimationRunnable$2;->this$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;
    .registers 4

    .line 298
    new-instance v0, Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;

    iget-object v1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$mFourthDotAnimationRunnable$2;->this$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

    sget v2, Lcom/codemao/nemo/R$id;->dot_fourth:I

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "dot_fourth"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$mFourthDotAnimationRunnable$2;->this$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;-><init>(Landroid/view/View;Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 297
    invoke-virtual {p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$mFourthDotAnimationRunnable$2;->invoke()Lcom/codemao/nemo/qrscan/element/DotAnimationRunnable;

    move-result-object v0

    return-object v0
.end method
