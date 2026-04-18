.class Lcom/codemao/nemo/activity/WorkPublishActivity$20;
.super Ljava/lang/Object;
.source "WorkPublishActivity.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkPublishActivity;->changeOpenSouce(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V
    .registers 2

    .line 1276
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$20;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

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
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 1285
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$20;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_1c

    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$20;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_1c

    .line 1286
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$20;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object p2, p2, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvOpenSource:Landroid/widget/ImageView;

    new-instance p3, Lcom/codemao/nemo/activity/WorkPublishActivity$20$1;

    invoke-direct {p3, p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity$20$1;-><init>(Lcom/codemao/nemo/activity/WorkPublishActivity$20;Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .registers 6

    .line 1276
    check-cast p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual/range {p0 .. p5}, Lcom/codemao/nemo/activity/WorkPublishActivity$20;->onResourceReady(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
