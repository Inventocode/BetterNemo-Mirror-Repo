.class public final Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$buildMineShareBpPath$1;
.super Ljava/lang/Object;
.source "ScanQRCodeActivity.kt"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->buildMineShareBpPath(Lcom/codemao/nemo/bean/LocalUserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $iv_mine_photo:Landroid/widget/ImageView;

.field final synthetic $mineShareView:Landroid/view/View;

.field final synthetic this$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$buildMineShareBpPath$1;->$iv_mine_photo:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$buildMineShareBpPath$1;->this$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

    iput-object p3, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$buildMineShareBpPath$1;->$mineShareView:Landroid/view/View;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/Bitmap;",
            ">;Z)Z"
        }
    .end annotation

    .line 212
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$buildMineShareBpPath$1;->$iv_mine_photo:Landroid/widget/ImageView;

    const p2, 0x7f0804e5

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$buildMineShareBpPath$1;->this$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

    iget-object p2, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$buildMineShareBpPath$1;->$mineShareView:Landroid/view/View;

    const-string p3, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/ViewGroup;

    const p3, 0x438c8000  # 281.0f

    .line 214
    invoke-static {p3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    const/high16 p4, 0x43b80000  # 368.0f

    invoke-static {p4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p4

    .line 213
    invoke-static {p2, p3, p4}, Lcom/codemao/nemo/util/ImageUtils;->createBitmap(Landroid/view/ViewGroup;II)Landroid/graphics/Bitmap;

    move-result-object p2

    const-string p3, "createBitmap(mineShareVi… ScreenUtils.dp2px(368f))"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->access$saveBpToFile(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 219
    iget-object p2, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$buildMineShareBpPath$1;->$iv_mine_photo:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 220
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$buildMineShareBpPath$1;->this$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

    iget-object p2, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$buildMineShareBpPath$1;->$mineShareView:Landroid/view/View;

    const-string p3, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/ViewGroup;

    const p3, 0x438c8000  # 281.0f

    .line 221
    invoke-static {p3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    const/high16 p4, 0x43b80000  # 368.0f

    invoke-static {p4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p4

    .line 220
    invoke-static {p2, p3, p4}, Lcom/codemao/nemo/util/ImageUtils;->createBitmap(Landroid/view/ViewGroup;II)Landroid/graphics/Bitmap;

    move-result-object p2

    const-string p3, "createBitmap(mineShareVi… ScreenUtils.dp2px(368f))"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->access$saveBpToFile(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .registers 6

    .line 210
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p5}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$buildMineShareBpPath$1;->onResourceReady(Landroid/graphics/Bitmap;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
